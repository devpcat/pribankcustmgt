package com.thyme.system.entity.systeminfo;

import cn.hutool.core.util.NumberUtil;
import lombok.Builder;
import lombok.Data;
import lombok.Setter;

/**
 * @author thyme
 * @ClassName NoHeapInfo
 * @Description TODO
 * @Date 2019/12/27 14:42
 */
@Setter
public class NoHeapInfo {

    /**
     * 初始化
     */
    private double noHeapInit;

    /**
     * 堆最大
     */
    private double noHeapMax;

    /**
     * 堆已用
     */
    private double noHeapUsed;

    /**
     * 堆可用
     */
    private double noHeapCommitted;

    public double getNoHeapInit() {
        return NumberUtil.div(noHeapInit, (1024  * 1024), 2);
    }

    public double getNoHeapMax() {
        return NumberUtil.div(noHeapMax, (1024  * 1024), 2);
    }

    public double getNoHeapUsed() {
        return NumberUtil.div(noHeapUsed, (1024  * 1024), 2);
    }

    public double getNoHeapCommitted() {
        return NumberUtil.div(noHeapCommitted, (1024  * 1024), 2);
    }
}
