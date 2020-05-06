package com.thyme.system.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

/**
 * @author thyme
 * @ClassName RedisVo
 * @Description TODO
 * @Date 2019/12/17 20:08
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RedisVo implements Serializable {

    private String key;

    private String value;

}
