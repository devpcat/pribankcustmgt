package com.thyme.system.entity;

import lombok.Builder;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author thyme
 * @ClassName SysRole
 * @Description TODO
 * @Date 2019/12/12 21:46
 */
@Data
@Builder
public class SysRole implements Serializable {

    static final long serialVersionUID = 1L;

    private String id;

    private String authority;

    private String name;

    private Date createTime;

    public SysRole(){

    }

    public SysRole(String id, String name, String authority, Date createTime){
        this.id = id;
        this.name = name;
        this.authority = authority;
        this.createTime = createTime;
    }

}
