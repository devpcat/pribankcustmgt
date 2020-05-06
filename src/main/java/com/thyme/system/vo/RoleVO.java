package com.thyme.system.vo;

import com.thyme.system.entity.SysRole;
import lombok.Data;

/**
 * @author cuiyating
 * @date 2020/1/16 16:45
 */
@Data
public class RoleVO extends SysRole {

    private String[] ids;
}
