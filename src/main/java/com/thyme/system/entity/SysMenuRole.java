package com.thyme.system.entity;

import lombok.Builder;
import lombok.Data;

/**
 * @author cuiyating
 * @date 2020/1/8 14:21
 */
@Data
@Builder
public class SysMenuRole {

    private String menuId;

    private String roleId;

    public SysMenuRole(String menuId, String roleId){
        this.menuId = menuId;
        this.roleId = roleId;
    }

    public SysMenuRole(String menuId){
        this.menuId = menuId;
    }
}
