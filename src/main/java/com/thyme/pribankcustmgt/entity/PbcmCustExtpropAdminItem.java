package com.thyme.pribankcustmgt.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.Version;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author yuchao925
 * @since 2020-04-04
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class PbcmCustExtpropAdminItem implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 管理员自定义属性id
     */
    @TableId(value = "propid", type = IdType.AUTO)
    private Integer propid;

    /**
     * 管理员自定义属性名
     */
    private String propname;

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
