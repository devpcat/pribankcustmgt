package com.thyme.pribankcustmgt.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.thyme.common.utils.SecurityUtils;
import com.thyme.pribankcustmgt.entity.*;
import com.thyme.pribankcustmgt.entity.vo.PbcmCustBaseinfoVo;
import com.thyme.pribankcustmgt.mapper.*;
import com.thyme.pribankcustmgt.service.PbcmCustBaseinfoService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author yuchao925
 * @since 2020-04-04
 */
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class PbcmCustBaseinfoServiceImpl extends ServiceImpl<PbcmCustBaseinfoMapper, PbcmCustBaseinfo> implements PbcmCustBaseinfoService {

    private final PbcmCustBaseinfoMapper baseinfoMapper;
    private final PbcmCustRelationMapper relationMapper;
    private final PbcmCustProductMapper productMapper;
    private final PbcmCustExtpropAdminValueMapper adminValueMapper;
    private final PbcmCustExtpropUserdefMapper userdefMapper;

    /**
     * 如果有custid则表示修改否则表示新增
     * @param custBaseinfo
     * @param custRelationList
     * @param custProductList
     * @param custExtpropAdminValueList
     * @param custExtpropUserdefList
     */
    @Override
    public void modifyCustInfo(PbcmCustBaseinfo custBaseinfo, List<PbcmCustRelation> custRelationList, List<PbcmCustProduct> custProductList, List<PbcmCustExtpropAdminValue> custExtpropAdminValueList, List<PbcmCustExtpropUserdef> custExtpropUserdefList) {
        boolean isAdd=false;
        if(null==custBaseinfo.getCustid()){
            isAdd=true;
        }

        if(isAdd){
            Authentication userAuthentication = SecurityUtils.getCurrentUserAuthentication();
            custBaseinfo.setMarketer(userAuthentication.getName());
            baseinfoMapper.insert(custBaseinfo);
        }else{
            baseinfoMapper.updateById(custBaseinfo);
        }

        int custid=custBaseinfo.getCustid();

        if(!isAdd) {
            //先删除原有记录
            UpdateWrapper wrapper = new UpdateWrapper();
            wrapper.eq("custid", custid);
            relationMapper.delete(wrapper);
            productMapper.delete(wrapper);
            adminValueMapper.delete(wrapper);
            userdefMapper.delete(wrapper);
        }

        //新增入记录
        custRelationList.stream().map(elem->elem.setCustid(custid)).forEach(elem->relationMapper.insert(elem));
        custProductList.stream().map(elem->elem.setCustid(custid)).forEach(elem->productMapper.insert(elem));
        custExtpropAdminValueList.stream().map(elem->elem.setCustid(custid)).forEach(elem->adminValueMapper.insert(elem));
        custExtpropUserdefList.stream().map(elem->elem.setCustid(custid)).forEach(elem->userdefMapper.insert(elem));
    }

    @Override
    public List<PbcmCustBaseinfoVo> getCustBaseinfoVoByUserName(String usernmae) {
        return baseinfoMapper.getCustBaseinfoVoByUserName(usernmae);
    }

    @Override
    public IPage<PbcmCustBaseinfoVo> getAll(Page page, Wrapper<PbcmCustBaseinfoVo> queryWrapper) {
        return baseinfoMapper.getAll(page,queryWrapper);
    }
}
