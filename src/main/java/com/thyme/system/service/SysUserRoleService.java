package com.thyme.system.service;

import com.thyme.system.entity.SysUserRole;

/**
 * @author cuiyating
 * @date 2020/1/12 0:43
 */
public interface SysUserRoleService {

    /**
     * 添加用户和角色的联系
     * @param sysUserRole 用户角色
     * @return 返回值
     */
    int insert(SysUserRole sysUserRole);

    /**
     * 根据用户id删除用户和角色的联系
     * @param userId 用户id
     * @return 返回值
     */
    int deleteByUserId(String userId);
}
