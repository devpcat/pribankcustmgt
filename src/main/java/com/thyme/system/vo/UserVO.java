package com.thyme.system.vo;

import com.thyme.system.entity.SysUser;
import lombok.Data;


/**
 * @author cuiyating
 * @date 2020/1/6 21:27
 */
@Data
public class UserVO  extends SysUser {

    private String userRole;

    public UserVO() {

    }

    public UserVO(String userRole){
        this.userRole = userRole;
    }
}
