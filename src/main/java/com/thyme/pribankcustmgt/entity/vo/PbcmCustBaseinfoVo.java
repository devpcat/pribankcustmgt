package com.thyme.pribankcustmgt.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

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
@AllArgsConstructor
public class PbcmCustBaseinfoVo implements Serializable {

    private static final long serialVersionUID=1L;

    private String nickName;

    /**
     * 营销人员
     */
    private String marketer;

    /**
     * 客户编号系统级别
     */
    //@TableId(value = "custid", type = IdType.AUTO)
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
