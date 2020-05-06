package com.thyme.pribankcustmgt.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.thyme.pribankcustmgt.entity.VPbcmCustInfo;
import com.thyme.pribankcustmgt.mapper.VPbcmCustInfoMapper;
import com.thyme.pribankcustmgt.service.VPbcmCustInfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 * VIEW 服务实现类
 * </p>
 *
 * @author yuchao925
 * @since 2020-04-10
 */
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class VPbcmCustInfoServiceImpl extends ServiceImpl<VPbcmCustInfoMapper, VPbcmCustInfo> implements VPbcmCustInfoService {

    private final VPbcmCustInfoMapper custInfoMapper;

    @Override
    public IPage<VPbcmCustInfo> getCustinfoByCri(Page page, Wrapper<VPbcmCustInfo> queryWrapper) {
        return custInfoMapper.getCustinfoByCri(page,queryWrapper);
    }
}
