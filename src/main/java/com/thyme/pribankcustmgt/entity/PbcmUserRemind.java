package com.thyme.pribankcustmgt.entity;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 
 * </p>
 *
 * @author yuchao925
 * @since 2020-04-07
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class PbcmUserRemind implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 用户的id号码
     */
    private String userid;

    /**
     * 客户id
     */
    private Integer custid;

    /**
     * 客户的名字--方便处理
     */
    private String custname;

    /**
     * 事件名称
     */
    private String eventname;

    /**
     * 提醒日期
     */
    private String eventdate;

    /**
     * 提醒内容
     */
    private String eventcontent;

    /**
     * 0-未读 1-已读 其他-无效
     */
    private Integer status;

    /**
     * 类型 1-重要事项 2-理财到期
     */
    private Integer type;

    /**
     * 预留1
     */
    private String reserve1;

    /**
     * 预留2
     */
    private String reserve2;

    /**
     * 预留3
     */
    private String reserve3;

    /**
     * 版本
     */
    @Version
    private Integer version;

    /**
     * 删除 0-否 1-是
     */
    @TableLogic
    private Integer deleted;

    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private Date createTime;

    /**
     * 更新事件
     */
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date updateTime;


}
