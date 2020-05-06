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
public class PbcmCustBaseinfo implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 营销人员
     */
    private String marketer;

    /**
     * 客户编号系统级别
     */
    @TableId(value = "custid", type = IdType.AUTO)
    private Integer custid;

    /**
     * 客户号
     */
    private String cino;

    /**
     * 姓名
     */
    private String name;

    /**
     * 性别
     */
    private String sex;

    /**
     * 生日
     */
    private String birth;

    /**
     * 工作单位
     */
    private String workunit;

    /**
     * 职务
     */
    private String position;

    /**
     * 企业性质
     */
    private String enterpriseprop;

    /**
     * 所属行业
     */
    private String industrytype;

    /**
     * 家庭住址
     */
    private String homeaddr;

    /**
     * 车辆品牌
     */
    private String carbrand;

    /**
     * 车牌号码
     */
    private String carno;

    /**
     * 单位电话
     */
    private String worktel;

    /**
     * 家庭电话
     */
    private String hometel;

    /**
     * 手机1
     */
    private String phone1;

    /**
     * 手机2
     */
    private String phone2;

    /**
     * 电子邮箱
     */
    private String email;

    /**
     * 微信号
     */
    private String wxno;

    /**
     * 是否是实际资金控制人
     */
    private String iscontroler;

    /**
     * 性格描述
     */
    private String characterdesc;

    /**
     * 收入状况
     */
    private String incomestate;

    /**
     * 兴趣爱好
     */
    private String hobby;

    /**
     * 最关注的人或事
     */
    private String interest;

    /**
     * 需要解决的人或事
     */
    private String problem;

    /**
     * 金融投资偏好
     */
    private String financialprefer;

    /**
     * 办理业务习惯
     */
    private String businessperfer;

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
