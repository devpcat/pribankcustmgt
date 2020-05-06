package com.thyme.system.entity;

import lombok.Builder;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author thyme
 * @ClassName SysMenu
 * @Description TODO
 * @Date 2019/12/19 15:37
 */
@Data
@Builder
public class SysMenu implements Serializable {

    static final long serialVersionUID = 1L;

    /**
     * 菜单主键
     */
    private String id;

    /**
     * 菜单父级
     */
    private String parentId;

    /**
     * 菜单名称
     */
    private String menuName;

    /**
     * 菜单别名
     */
    private String menuCode;

    /**
     * 菜单链接
     */
    private String menuHref;

    /**
     * 菜单图标
     */
    private String menuIcon;

    /**
     * 菜单级别
     */
    private String menuLevel;

    /**
     * 菜单权重
     */
    private String menuWeight;

    /**
     * 菜单是否显示
     */
    private Boolean isShow;

    /**
     * 菜单创建时间
     */
    private Date createDate;

    /**
     * 菜单创建人
     */
    private String createBy;

    public SysMenu(String id, String parentId, String menuName, String menuCode, String menuHref, String menuIcon,
                   String menuLevel, String menuWeight, Boolean isShow, Date createDate, String createBy){
        this.id = id;
        this.parentId = parentId;
        this.menuName = menuName;
        this.menuCode = menuCode;
        this.menuHref = menuHref;
        this.menuIcon = menuIcon;
        this.menuLevel = menuLevel;
        this.menuWeight = menuWeight;
        this.isShow = isShow;
        this.createDate = createDate;
        this.createBy = createBy;
    }
}
