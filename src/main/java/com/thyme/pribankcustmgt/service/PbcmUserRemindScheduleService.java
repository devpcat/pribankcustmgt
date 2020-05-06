package com.thyme.pribankcustmgt.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.thyme.pribankcustmgt.entity.PbcmCustBaseinfo;
import com.thyme.pribankcustmgt.entity.PbcmCustProduct;
import com.thyme.pribankcustmgt.entity.PbcmUserRemind;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
@Slf4j
public class PbcmUserRemindScheduleService {

    private final PbcmCustProductService productService;
    private final PbcmCustBaseinfoService custBaseinfoService;
    private final PbcmUserRemindService userRemindService;

    @Scheduled(cron = "0 0 2 * * ?")
    public void setProductRemind() {
        QueryWrapper<PbcmCustProduct> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("reserve1", "是").eq("enddate", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
        List<PbcmCustProduct> list = productService.list(queryWrapper);
        for (PbcmCustProduct elem : list) {
            try {
                PbcmUserRemind remind = new PbcmUserRemind();
                remind.setType(2);
                remind.setEventname("产品名称[" + elem.getName() + "]产品金额[" + elem.getAmt() + "]");
                remind.setEventdate(elem.getEnddate());
                remind.setEventcontent(String.format("产品代码[%s]名称[%s]金额[%s]份额[%s]起息日[%s]到息日[%s]产品类型[%s]运作模式[%s]",
                        elem.getPid(), elem.getName(), elem.getAmt(), elem.getQuotient(), elem.getStartdate(), elem.getEnddate(), elem.getType(), elem.getOpermode()));
                PbcmCustBaseinfo baseinfo = custBaseinfoService.getOne(new QueryWrapper<PbcmCustBaseinfo>().eq("custid", elem.getCustid()));
                remind.setUserid(baseinfo.getMarketer());
                remind.setCustname(baseinfo.getName());
                remind.setStatus(0);
                remind.setCustid(elem.getCustid());
                userRemindService.save(remind);
            } catch (Exception e) {
                log.error("setProductRemind cron", e);
            }
        }
    }

}
