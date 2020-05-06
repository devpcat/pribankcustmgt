package com.thyme.pribankcustmgt.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * <p>
 * VIEW
 * </p>
 *
 * @author yuchao925
 * @since 2020-04-10
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class VPbcmCustInfo implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 营销人员
     */
    private String marketer;

    /**
     * 客户编号系统级别
     */
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
     * 手机1
     */
    private String phone1;


}
