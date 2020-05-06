package com.thyme.pribankcustmgt.service;

import com.thyme.pribankcustmgt.entity.PbcmCustExtpropAdminValue;
import com.baomidou.mybatisplus.extension.service.IService;
import com.thyme.pribankcustmgt.entity.vo.PbcmCustExtpropAdminVo;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author yuchao925
 * @since 2020-04-04
 */
public interface PbcmCustExtpropAdminValueService extends IService<PbcmCustExtpropAdminValue> {

    /**
     * 查询用户自定的属性值
     * @param custid
     * @return
     */
    List<PbcmCustExtpropAdminVo> findAdminExtprop(int custid);

}
