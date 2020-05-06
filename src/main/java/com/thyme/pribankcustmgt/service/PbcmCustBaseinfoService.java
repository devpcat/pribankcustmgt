package com.thyme.pribankcustmgt.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.thyme.pribankcustmgt.entity.*;
import com.thyme.pribankcustmgt.entity.vo.PbcmCustBaseinfoVo;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author yuchao925
 * @since 2020-04-04
 */
public interface PbcmCustBaseinfoService extends IService<PbcmCustBaseinfo> {

    //执行用户信息新增或者修改的入库操作
    @Transactional(isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED,rollbackFor = Throwable.class)
    public void modifyCustInfo(PbcmCustBaseinfo custBaseinfo, List<PbcmCustRelation> custRelationList, List< PbcmCustProduct> custProductList, List<PbcmCustExtpropAdminValue> custExtpropAdminValueList, List<PbcmCustExtpropUserdef> custExtpropUserdefList);

    public List<PbcmCustBaseinfoVo> getCustBaseinfoVoByUserName(String usernmae);

    IPage<PbcmCustBaseinfoVo> getAll(Page page, Wrapper<PbcmCustBaseinfoVo> queryWrapper);

}
