package com.thyme.pribankcustmgt.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.thyme.pribankcustmgt.entity.PbcmCustBaseinfo;
import com.thyme.pribankcustmgt.entity.vo.PbcmCustBaseinfoVo;
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
public interface PbcmCustBaseinfoMapper extends BaseMapper<PbcmCustBaseinfo> {

    @Select("SELECT a.nick_name, marketer, custid, cino, b.NAME, b.sex, birth, workunit, phone1 FROM sys_user a, pbcm_cust_baseinfo b WHERE a.NAME = b.marketer  AND b.deleted = 0  AND a.branchid IN ( SELECT branchid FROM sys_user c WHERE c.NAME = #{username} )")
    List<PbcmCustBaseinfoVo> getCustBaseinfoVoByUserName(@Param("username") String username);

    @Select("SELECT b.nick_name nickName,a.marketer, a.custid, a.cino, a.name, a.sex, a.birth, a.workunit, a.phone1 FROM (select * from pbcm_cust_baseinfo where deleted=0) a left join sys_user b on (a.marketer=b.name) ${ew.customSqlSegment}")
    IPage<PbcmCustBaseinfoVo> getAll(Page page,@Param(Constants.WRAPPER) Wrapper<PbcmCustBaseinfoVo> queryWrapper);

}
