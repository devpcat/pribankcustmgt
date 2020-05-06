package com.thyme.system.entity.systeminfo;

import lombok.Data;

/**
 * @author thyme
 * @ClassName SysInfo
 * @Description TODO
 * @Date 2019/12/25 10:33
 */
@Data
public class SysInfo {

    /**
     * 服务器名称
     */
    private String computerName;

    /**
     * 服务器Ip
     */
    private String computerIp;

    /**
     * 项目路径
     */
    private String userDir;

    /**
     * 操作系统
     */
    private String osName;

    /**
     * 系统架构
     */
    private String osArch;
}
