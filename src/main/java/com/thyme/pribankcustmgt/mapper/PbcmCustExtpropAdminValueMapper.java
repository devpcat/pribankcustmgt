package com.thyme.pribankcustmgt.mapper;

import com.thyme.pribankcustmgt.entity.PbcmCustExtpropAdminValue;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.thyme.pribankcustmgt.entity.vo.PbcmCustExtpropAdminVo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author yuchao925
 * @since 2020-04-04
 */
public interface PbcmCustExtpropAdminValueMapper extends BaseMapper<PbcmCustExtpropAdminValue> {

    /**
     * 查询客户的管理员定义属性
     * @param custid
     * @return
     */
    @Select("SELECT a.propid,a.propname, b.propvalue FROM (select * from pbcm_cust_extprop_admin_item where deleted=0) a LEFT JOIN (select * from pbcm_cust_extprop_admin_value where deleted=0 and custid = ${custid}) b ON ( a.propid = b.propid ) order by a.propid asc")
    List<PbcmCustExtpropAdminVo> findAdminExtprop(@Param("custid") int custid);
}
