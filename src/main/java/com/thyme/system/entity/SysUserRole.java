package com.thyme.system.entity;

import lombok.Builder;
import lombok.Data;

/**
 * @author cuiyating
 * @date 2020/1/12 0:43
 */
@Data
@Builder
public class SysUserRole {

    private String userId;

    private String roleId;

    public SysUserRole(){

    }

    public SysUserRole(String userId, String roleId){
        this.userId = userId;
        this.roleId = roleId;
    }
}
