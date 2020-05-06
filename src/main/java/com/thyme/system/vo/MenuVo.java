package com.thyme.system.vo;

import com.thyme.system.entity.SysMenu;
import lombok.Builder;
import lombok.Data;

import java.util.List;

/**
 * @author thyme
 * @ClassName MenuVo
 * @Description TODO
 * @Date 2019/12/24 15:54
 */
@Data
@Builder
public class MenuVo {

    private String name;

    private String icon;

    private String code;

    private List<SysMenu> sysMenus;

}
