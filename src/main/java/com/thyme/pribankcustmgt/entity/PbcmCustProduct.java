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
public class PbcmCustProduct implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 客户id
     */
    private Integer custid;

    /**
     * 产品名称
     */
    private String name;

    /**
     * 产品编号
     */
    private String pid;

    /**
     * 金额
     */
    private String amt;

    /**
     * 份额
     */
    private String quotient;

    /**
     * 起息日
     */
    private String startdate;

    /**
     * 到息日
     */
    private String enddate;

    /**
     * 产品类型
     */
    private String type;

    /**
     * 运作模式
     */
    private String opermode;

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
