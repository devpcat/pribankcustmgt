package com.thyme.pribankcustmgt.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.thyme.pribankcustmgt.entity.VPbcmCustInfo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * <p>
 * VIEW Mapper 接口
 * </p>
 *
 * @author yuchao925
 * @since 2020-04-10
 */
public interface VPbcmCustInfoMapper extends BaseMapper<VPbcmCustInfo> {

    //@Select("select distinct a.marketer, a.custid, a.cino, a.name, a.sex, a.birth, a.workunit, a.phone1 from ((select * from pbcm_cust_baseinfo where deleted=0) a left join (select custid,name as relarionname,birth as relationbirth from pbcm_cust_relation where deleted=0) b on (a.custid=b.custid)) left join (select custid,name pname,pid,amt pamt,quotient pquotient,startdate psdate,enddate pedate,type ptype,opermode pmode from pbcm_cust_product where deleted=0) c on (a.custid=c.custid) ${ew.customSqlSegment}")
    @Select("select * from (select distinct d.marketer, d.custid, d.cino, d.name, d.sex, d.birth, d.workunit, d.phone1 from (select a.*,b.relarionname,b.relationbirth,c.pname,c.pid,c.pamt,c.pquotient,c.psdate,c.pedate,c.ptype,c.pmode from ((select * from pbcm_cust_baseinfo where deleted=0) a left join (select custid,name as relarionname,birth as relationbirth from pbcm_cust_relation where deleted=0) b on (a.custid=b.custid)) left join (select custid,name pname,pid,amt pamt,quotient pquotient,startdate psdate,enddate pedate,type ptype,opermode pmode from pbcm_cust_product where deleted=0) c on (a.custid=c.custid) ${ew.customSqlSegment}) d) e")
    IPage<VPbcmCustInfo> getCustinfoByCri(Page page, @Param(Constants.WRAPPER) Wrapper<VPbcmCustInfo> queryWrapper);

}
