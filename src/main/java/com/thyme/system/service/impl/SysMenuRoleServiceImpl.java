package com.thyme.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.thyme.system.dao.SysMenuRoleDao;
import com.thyme.system.entity.SysMenuRole;
import com.thyme.system.service.SysMenuRoleService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author cuiyating
 * @date 2020/1/8 14:29
 */
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class SysMenuRoleServiceImpl implements SysMenuRoleService {

    private final SysMenuRoleDao sysMenuRoleDao;

    @Override
    public int addMenuRole(SysMenuRole sysMenuRole) {
        return sysMenuRoleDao.addMenuRole(sysMenuRole);
    }

    @Override
    public int deleteByRoleId(String roleId) {
        return sysMenuRoleDao.deleteByRoleId(roleId);
    }

    @Override
    public List<String> getAllMenuId(String roleId, List<String> parentIds) {
        QueryWrapper<SysMenuRole> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("menu_id").eq("role_id", roleId).notIn("menu_id", parentIds);
        List<SysMenuRole> sysMenuRoles = sysMenuRoleDao.selectList(queryWrapper);
        return sysMenuRoles.stream().map(o -> o.getMenuId()).collect(Collectors.toList());
    }
}
