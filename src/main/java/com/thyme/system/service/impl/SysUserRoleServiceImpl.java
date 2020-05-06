package com.thyme.system.service.impl;

import com.thyme.system.dao.SysUserRoleDao;
import com.thyme.system.entity.SysUserRole;
import com.thyme.system.service.SysUserRoleService;
import com.thyme.system.service.SysUserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author cuiyating
 * @date 2020/1/12 0:45
 */
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class SysUserRoleServiceImpl implements SysUserRoleService {

    private final SysUserRoleDao sysUserRoleDao;

    @Override
    public int insert(SysUserRole sysUserRole) {
        return sysUserRoleDao.insert(sysUserRole);
    }

    @Override
    public int deleteByUserId(String userId) {
        return sysUserRoleDao.deleteByUserId(userId);
    }
}
