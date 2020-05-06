package com.thyme.system.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.thyme.system.entity.SysUserRole;
import org.apache.ibatis.annotations.Delete;
import org.springframework.stereotype.Repository;

/**
 * @author cuiyating
 * @date 2020/1/12 0:42
 */
@Repository
public interface SysUserRoleDao extends BaseMapper<SysUserRole> {

    /**
     * 根据用户id删除用户和角色的联系
     * @param userId 用户id
     * @return 返回值
     */
    @Delete("delete from sys_user_role where user_id = #{userId}")
    int deleteByUserId(String userId);
}
