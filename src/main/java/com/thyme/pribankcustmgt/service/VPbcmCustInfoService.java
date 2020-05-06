package com.thyme.pribankcustmgt.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.thyme.pribankcustmgt.entity.VPbcmCustInfo;

/**
 * <p>
 * VIEW 服务类
 * </p>
 *
 * @author yuchao925
 * @since 2020-04-10
 */
public interface VPbcmCustInfoService extends IService<VPbcmCustInfo> {

    IPage<VPbcmCustInfo> getCustinfoByCri(Page page, Wrapper<VPbcmCustInfo> queryWrapper);

}
