package com.thyme.pribankcustmgt.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.thyme.common.base.ApiResponse;
import com.thyme.common.utils.SecurityUtils;
import com.thyme.pribankcustmgt.entity.PbcmCustBaseinfo;
import com.thyme.pribankcustmgt.entity.PbcmUserRemind;
import com.thyme.pribankcustmgt.service.PbcmCustBaseinfoService;
import com.thyme.pribankcustmgt.service.PbcmUserRemindService;
import com.thyme.system.service.SysUserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/pbuser")
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class UsersController {

    private final PbcmUserRemindService remindService;
    private final SysUserService sysUserService;
    private final PbcmCustBaseinfoService custBaseinfoService;

    @GetMapping("/getRemind")
    @ResponseBody
    public ApiResponse getRemind() {
        Authentication userAuthentication = SecurityUtils.getCurrentUserAuthentication();
        String userid = userAuthentication.getName();
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("userid", userid);
        queryWrapper.eq("eventdate", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
        queryWrapper.orderByAsc("id");//按先后顺序排
        List<PbcmUserRemind> list = remindService.list(queryWrapper);
        for (PbcmUserRemind elem : list) {
            if (elem.getType() == null) continue;
            if (elem.getType() == 1)
                elem.setEventname("重要事项提醒:" + elem.getCustname() + "  " + elem.getEventname());
            else
                elem.setEventname("产品到期提醒:" + elem.getCustname() + "  " + elem.getEventname());
        }
        ApiResponse response = new ApiResponse(200, "ok", list);
        log.debug("UserController-getRemind:" + response);
        return response;
    }

    @GetMapping("/markRead")
    @ResponseBody
    public ApiResponse markRead(@RequestParam("id") int id) {
        PbcmUserRemind remind = new PbcmUserRemind();
        remind.setId(id);
        remind.setStatus(1);//1-已读
        remindService.updateById(remind);
        return ApiResponse.ofSuccess("ok");
    }

    @PostMapping("/setRemind")
    @ResponseBody
    public ApiResponse setRemind(@RequestBody PbcmUserRemind remind) {
        remind.setStatus(0);
        remind.setType(1);
        Authentication userAuthentication = SecurityUtils.getCurrentUserAuthentication();
        remind.setUserid(userAuthentication.getName());
        remindService.save(remind);
        return ApiResponse.success("ok");
    }

    @GetMapping("/getCurrentBranchUser")
    @ResponseBody
    public ApiResponse getCurrentBranchUser() {
        Authentication userAuthentication = SecurityUtils.getCurrentUserAuthentication();
        List<Map<String, Object>> currentBranchUser = sysUserService.findCruuentBranchUser(userAuthentication.getName());
        ApiResponse response = new ApiResponse();
        response.setData(currentBranchUser);
        response.setCode(200);
        response.setMessage("ok");
        return response;
    }

    @PostMapping("/changeCustManager")
    @ResponseBody
    public ApiResponse changeCustManager(@RequestBody JSONObject reqjson) {
        String newcustmgt = reqjson.getString("newcustmgt");
        JSONArray jsonArray = reqjson.getJSONArray("custlist");
        for (Object elem : jsonArray) {
            String custid = ((JSONObject) elem).getString("custid");
            PbcmCustBaseinfo baseinfo = new PbcmCustBaseinfo();
            baseinfo.setMarketer(newcustmgt);
            baseinfo.setCustid(Integer.parseInt(custid));
            custBaseinfoService.updateById(baseinfo);
        }
        return ApiResponse.ofSuccess("ok");
    }

}
