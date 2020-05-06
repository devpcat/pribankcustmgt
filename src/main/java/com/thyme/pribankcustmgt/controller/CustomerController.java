package com.thyme.pribankcustmgt.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.thyme.common.base.ApiResponse;
import com.thyme.common.utils.SecurityUtils;
import com.thyme.pribankcustmgt.entity.*;
import com.thyme.pribankcustmgt.entity.vo.PbcmCustExtpropAdminVo;
import com.thyme.pribankcustmgt.service.*;
import com.thyme.system.service.SysUserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 客户信息控制类
 */
@Slf4j
@Controller
@RequestMapping("/pbcust")
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class CustomerController {

    private final PbcmCustBaseinfoService custBaseinfoService;//客户基本信息操作类
    private final PbcmCustRelationService custRelationService;//客户亲属关系类
    private final PbcmCustProductService custProductService;//客户持有产品操作类
    private final PbcmCustExtpropUserdefService custExtpropUserdefService;//用户自定义属性
    private final PbcmCustExtpropAdminValueService custExtpropAdminValueService;//管理员自定义属性
    private final PbcmCustExtpropAdminItemService custExtpropAdminItemService;
    private final VPbcmCustInfoService vCustInfoService;
    private final SysUserService sysUserService;


    /**
     * 菜单跳转进来的主页
     * 列出客户清单
     * 仅展示本人
     *
     * @return
     */
    @GetMapping("/list")
    public String indexSelf(Model model) {
        model.addAttribute("region", "1");
        return "module/pribankcustmgt/customer";
    }


    @GetMapping("/listSuperior")
    public String indexSuperior(Model model) {
        model.addAttribute("region", "2");
        return "module/pribankcustmgt/customerSuperior";
    }

    @GetMapping("/listAll")
    public String indexAll(Model model) {
        model.addAttribute("region", "3");
        return "module/pribankcustmgt/customerAll";
    }

    /**
     * 跳转至添加信息页面
     *
     * @return
     */
    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("isAdd", true);
        //将管理员自定义的项目查询出来，用于新增时必填
        List<PbcmCustExtpropAdminItem> list = custExtpropAdminItemService.list();
        model.addAttribute("adminItem", list);
        return "module/pribankcustmgt/addCust";
    }

    /**
     * 展现查询客户信息
     *
     * @param page
     * @param pageSize
     * @return
     */
    @ResponseBody
    @GetMapping("/getCustInfo")
    public ApiResponse getUserInfo(@RequestParam("page") int page,
                                   @RequestParam("page_size") int pageSize, @RequestParam("qrycustcino") String qrycustcino, @RequestParam("qrycustname") String qrycustname, String region, String qrymarketer) {
        Page<PbcmCustBaseinfo> pageobj = new Page<>(page, pageSize);
        QueryWrapper queryWrapper = new QueryWrapper<>();
        Authentication userAuthentication = SecurityUtils.getCurrentUserAuthentication();
        String name = userAuthentication.getName();
        if ("2".equals(region)) {
            if (null == qrymarketer || qrymarketer.trim().isEmpty())
                queryWrapper.select("marketer", "custid", "cino", "name", "sex", "birth", "workunit", "phone1").inSql("marketer", "select name from sys_user where branchid in (select branchid from sys_user where name='" + name + "')");
            else {
                //校验两人是否属于同一机构，如果不是不允许查询
                String n1 = sysUserService.findBranchId(name);
                String n2 = sysUserService.findBranchId(qrymarketer);
                if (n1 == null || n2 == null || !n1.equals(n2)) {
                    return ApiResponse.fail("客户经理不存在或不属于您所辖机构");
                }
                queryWrapper.select("marketer", "custid", "cino", "name", "sex", "birth", "workunit", "phone1").eq("marketer", qrymarketer);
            }
        } else if ("3".equals(region)) {
            if (null == qrymarketer || qrymarketer.trim().isEmpty()) {
                queryWrapper.select("marketer", "custid", "cino", "name", "sex", "birth", "workunit", "phone1");
            } else {
                queryWrapper.select("marketer", "custid", "cino", "name", "sex", "birth", "workunit", "phone1").eq("marketer", qrymarketer);
            }
        } else {
            queryWrapper.select("marketer", "custid", "cino", "name", "sex", "birth", "workunit", "phone1").eq("marketer", name);
        }

        if (null != qrycustcino && !qrycustcino.trim().isEmpty()) {
            queryWrapper.like("cino", qrycustcino);
        }
        if (null != qrycustname && !qrycustname.trim().isEmpty()) {
            queryWrapper.like("name", qrycustname);
        }
        IPage<PbcmCustBaseinfo> iPage = custBaseinfoService.getAll(pageobj, queryWrapper);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("total", iPage.getTotal());
        jsonObject.put("page", iPage.getCurrent());
        jsonObject.put("page_size", iPage.getSize());
        //jsonObject.put("userList", iPage.getRecords().stream().map(elem -> new PbcmCustBaseinfoVo(!"1".equals(region) ? sysUserService.findByName(elem.getMarketer()).getNickName() : "", elem.getMarketer(), elem.getCustid(), elem.getCino(), elem.getName(), elem.getSex(), elem.getBirth(), elem.getWorkunit(), elem.getPhone1())).collect(Collectors.toList()));
        jsonObject.put("userList", iPage.getRecords());
        return ApiResponse.ofSuccess(jsonObject);
    }

    /**
     * 跳转至详情页面，但是带上客户的id
     *
     * @param userid
     * @return
     */
    @GetMapping("/showDetail")
    public String showDetail(@RequestParam("userid") int userid, Model model) {
        log.debug("准备查询客户id{}的详细信息", userid);
        model.addAttribute("isEdit", false);
        model.addAttribute("custid", userid);
        return "module/pribankcustmgt/addCust";
    }

    /**
     * 用户的详细信息编辑，带上客户的id
     *
     * @param userid
     * @param model
     * @return
     */
    @GetMapping("/editDetail")
    public String editDetail(@RequestParam("userid") int userid, Model model) {
        log.debug("准备编辑客户id{}的详细信息", userid);
        model.addAttribute("isEdit", true);
        model.addAttribute("custid", userid);
        return "module/pribankcustmgt/addCust";
    }

    @GetMapping("/getDetailInfo")
    @ResponseBody
    public ApiResponse getDetailInfo(@RequestParam("custid") int custid) {
        JSONObject resjson = new JSONObject();
        //查询基础表获取信息
        PbcmCustBaseinfo custBaseinfo = custBaseinfoService.getById(custid);
        //System.out.println(custBaseinfo);
        resjson.put("baseinfo", custBaseinfo);
        //查询家庭成员信息
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("custid", custid);
        queryWrapper.orderByAsc("id");
        List familyList = custRelationService.list(queryWrapper);
        resjson.put("familyinfo", familyList);
        //查询产品信息
        List productList = custProductService.list(queryWrapper);
        resjson.put("productinfo", productList);
        //查询用户自定义属性值
        List extUserDefList = custExtpropUserdefService.list(queryWrapper);
        resjson.put("custprop", extUserDefList);
        //查询管理员自定义属性
        List<PbcmCustExtpropAdminVo> adminExtpropList = custExtpropAdminValueService.findAdminExtprop(custid);
        resjson.put("adminprop", adminExtpropList);
        ApiResponse response = new ApiResponse(200, "ok", resjson);
        log.debug("CustomerController-getDetailInfo:" + response);
        return response;
    }

    /**
     * 新增或修改客户数据
     *
     * @param reqjson
     * @return
     */
    @PostMapping("/updateCustInfo")
    @ResponseBody
    public ApiResponse updateCustInfo(@RequestBody JSONObject reqjson) {
        //{"baseinfo":{"marketer":"admin","custid":10000000,"cino":"A00001","name":"狂神","sex":"男","birth":"2020-01-01","workunit":"中国工商银行股份有限公司大连市分行中国工商银行股份有限公司大连市分行","position":"职位","enterpriseprop":"国企","industrytype":"农、林、牧、渔业","homeaddr":"家庭地址","carbrand":"骑车","carno":"车牌","worktel":"0411","hometel":"辽宁大连","phone1":"15242589365","phone2":"18941105108","email":"yuchao@dl","wxno":"yuchao925","iscontroler":"是","characterdesc":"安静","incomestate":"10万","hobby":"兴趣爱好","interest":"关注的人或事","problem":"需要解决的问题","financialprefer":"投资偏好","businessperfer":"办理业务习惯","version":2,"deleted":0,"createTime":"2020-03-30 22:08:39","updateTime":"2020-03-30 22:23:05"},"custprop":[{"id":1,"custid":10000000,"propname":"用户自定义1","propvalue":"用户自定义1值","version":1,"deleted":0},{"id":2,"custid":10000000,"propname":"用户自定义2","propvalue":"用户自定义2值","version":1,"deleted":0}],"familyinfo":[{"id":1,"custid":10000000,"relation":"父母","name":"父亲大人","birth":"1967-12-02","note":"父亲大人备注","version":1,"deleted":0}],"adminprop":[{"propname":"管理员属性1"},{"propname":"管理员属性2","propvalue":"测试管理员值1"}],"productinfo":[{"id":1,"custid":10000000,"name":"1111","pid":"2222","amt":"3333","quotient":"4444","startdate":"2019-12-13","enddate":"2020-11-11","type":"类型","opermode":"操作模式","version":1,"deleted":0}]}
        PbcmCustBaseinfo custBaseinfo = JSON.toJavaObject(reqjson.getJSONObject("baseinfo"), PbcmCustBaseinfo.class);
        //System.out.println(custBaseinfo);

        if(null==custBaseinfo.getCino()||custBaseinfo.getCino().isEmpty()){
            return ApiResponse.fail("客户编号必填");
        }

        if(null==custBaseinfo.getName()||custBaseinfo.getName().isEmpty()){
            return ApiResponse.fail("客户姓名必填");
        }

        if(null==custBaseinfo.getBirth()||custBaseinfo.getBirth().isEmpty()){
            return ApiResponse.fail("客户生日必填");
        }

        if(null==custBaseinfo.getSex()||custBaseinfo.getSex().isEmpty()){
            return ApiResponse.fail("客户性别必填");
        }

        if(null==custBaseinfo.getPhone1()||custBaseinfo.getPhone1().isEmpty()){
            return ApiResponse.fail("客户手机必填");
        }

        List<PbcmCustRelation> relationList = JSONObject.parseArray(reqjson.getJSONArray("familyinfo").toJSONString(), PbcmCustRelation.class);
        //System.out.println(relation);

        List<PbcmCustExtpropUserdef> extpropUserdefList = JSONObject.parseArray(reqjson.getJSONArray("custprop").toJSONString(), PbcmCustExtpropUserdef.class);

        List<PbcmCustProduct> custProductList = JSONObject.parseArray(reqjson.getJSONArray("productinfo").toJSONString(), PbcmCustProduct.class);

        List<PbcmCustExtpropAdminValue> extpropAdminValueList = JSONObject.parseArray(reqjson.getJSONArray("adminprop").toJSONString(), PbcmCustExtpropAdminValue.class);

        /*System.out.println(custBaseinfo);
        System.out.println(relationList);
        System.out.println(custProductList);
        System.out.println(extpropAdminValueList);
        System.out.println(extpropUserdefList);*/

        //对象已经全部ok,执行数据库操作
        custBaseinfoService.modifyCustInfo(custBaseinfo, relationList, custProductList, extpropAdminValueList, extpropUserdefList);

        return ApiResponse.success("ok");
    }

    @ResponseBody
    @GetMapping("/delCust")
    public ApiResponse deleteCust(@RequestParam("custid") int custid) {
        boolean b = custBaseinfoService.removeById(custid);
        if (b) {
            return ApiResponse.success("ok");
        } else {
            return ApiResponse.success("fail,please check log!");
        }
    }

    //管理员自定义属性的添加和删除
    @GetMapping("/showAdminExpPropItem")
    public String showAdminExpPropItem() {
        return "module/pribankcustmgt/adminExpPropItem";
    }

    @ResponseBody
    @GetMapping("/getAdminExpPropItem")
    public ApiResponse getAdminExpPropItem(@RequestParam("page") int page,
                                           @RequestParam("page_size") int pageSize) {
        Page<PbcmCustExtpropAdminItem> pageobj = new Page<>(page, pageSize);
        IPage<PbcmCustExtpropAdminItem> iPage = custExtpropAdminItemService.page(pageobj);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("total", iPage.getTotal());
        jsonObject.put("page", iPage.getCurrent());
        jsonObject.put("page_size", iPage.getSize());
        jsonObject.put("itemList", iPage.getRecords());
        return ApiResponse.ofSuccess(jsonObject);
    }

    @ResponseBody
    @GetMapping("/updateAdminExpPropItem")
    public ApiResponse updateAdminExpPropItem(int id, String adminitem) {
        PbcmCustExtpropAdminItem custExtpropAdminItem = new PbcmCustExtpropAdminItem();
        custExtpropAdminItem.setPropid(id);
        custExtpropAdminItem.setPropname(adminitem);
        custExtpropAdminItemService.updateById(custExtpropAdminItem);
        return ApiResponse.ofSuccess("ok");
    }

    @ResponseBody
    @GetMapping("/deleteAdminExpPropItem")
    public ApiResponse deleteAdminExpPropItem(int id) {
        custExtpropAdminItemService.removeById(id);
        return ApiResponse.ofSuccess("ok");
    }

    @ResponseBody
    @GetMapping("/addAdminExpPropItem")
    public ApiResponse addAdminExpPropItem(PbcmCustExtpropAdminItem item) {
        custExtpropAdminItemService.save(item);
        return ApiResponse.ofSuccess("ok");
    }

    @GetMapping("/queryCustomer")
    public String queryCustomer(Model model) {
        model.addAttribute("region", "1");
        return "module/pribankcustmgt/queryCustomer";
    }

    @GetMapping("/queryCustomerSuperior")
    public String queryCustomerSuperior(Model model) {
        model.addAttribute("region", "2");
        return "module/pribankcustmgt/queryCustomer";
    }

    @GetMapping("/queryCustomerAll")
    public String queryCustomerAll(Model model) {
        model.addAttribute("region", "3");
        return "module/pribankcustmgt/queryCustomer";
    }

    @PostMapping("/searchCustInfo")
    @ResponseBody
    public ApiResponse searchCustInfo(@RequestBody JSONObject reqjson) {
        System.out.println(reqjson.toJSONString());
        int page = reqjson.getInteger("page");
        int pageSize = reqjson.getInteger("page_size");
        int region = reqjson.getInteger("region");
        System.out.println(region);
        //解析条件
        JSONArray criarr = reqjson.getJSONArray("crilist");
        QueryWrapper<VPbcmCustInfo> queryWrapper = new QueryWrapper<>();
        for (Object elem : criarr) {
            JSONObject elemjson = (JSONObject) elem;
            String field = elemjson.getString("field");
            if (null == field || field.trim().isEmpty())
                continue;
            String value = elemjson.getString("value");
            if (null == value || value.trim().isEmpty()) {
                continue;
            }
            String operator = elemjson.getString("operator");
            if ("=".equals(operator)) {
                queryWrapper.eq(field, value);
            }
            if ("<>".equals(operator)) {
                queryWrapper.ne(field, value);
            }
            if (">".equals(operator)) {
                queryWrapper.gt(field, value);
            }
            if ("<".equals(operator)) {
                queryWrapper.lt(field, value);
            }
            if ("like".equals(operator)) {
                queryWrapper.like(field, value);
            }
            if ("not like".equals(operator)) {
                queryWrapper.notLike(field, value);
            }
        }

        Authentication userAuthentication = SecurityUtils.getCurrentUserAuthentication();
        String name = userAuthentication.getName();

        if(1==region){
            queryWrapper.eq("marketer",name);
        }

        if(2==region){
            queryWrapper.inSql("marketer","select name from sys_user where branchid in (select branchid from sys_user where name='" + name + "')");
        }

        //解析排序
        JSONArray ordeerarr = reqjson.getJSONArray("orilist");
        for (Object elem : ordeerarr) {
            JSONObject elemjson = (JSONObject) elem;
            String field = elemjson.getString("field");
            if (null == field || field.trim().isEmpty())
                continue;
            String operator = elemjson.getString("operator");
            if ("asc".equals(operator)) {
                queryWrapper.orderByAsc(field);
            }
            if ("desc".equals(operator)) {
                queryWrapper.orderByDesc(field);
            }
        }
        Page<VPbcmCustInfo> pageobj = new Page<>(page, pageSize);
        IPage<VPbcmCustInfo> iPage = vCustInfoService.getCustinfoByCri(pageobj, queryWrapper);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("total", iPage.getTotal());
        jsonObject.put("page", iPage.getCurrent());
        jsonObject.put("page_size", iPage.getSize());
        jsonObject.put("custList", iPage.getRecords());
        return ApiResponse.ofSuccess(jsonObject);
    }
}
