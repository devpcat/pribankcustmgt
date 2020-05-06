package com.thyme.pribankcustmgt.service.impl;

import com.thyme.pribankcustmgt.entity.PbcmCustExtpropAdminValue;
import com.thyme.pribankcustmgt.entity.vo.PbcmCustExtpropAdminVo;
import com.thyme.pribankcustmgt.mapper.PbcmCustExtpropAdminValueMapper;
import com.thyme.pribankcustmgt.service.PbcmCustExtpropAdminValueService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author yuchao925
 * @since 2020-04-04
 */
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class PbcmCustExtpropAdminValueServiceImpl extends ServiceImpl<PbcmCustExtpropAdminValueMapper, PbcmCustExtpropAdminValue> implements PbcmCustExtpropAdminValueService {

    private final PbcmCustExtpropAdminValueMapper custExtpropAdminValueMapper;

    @Override
    public List<PbcmCustExtpropAdminVo> findAdminExtprop(int custid) {
        return custExtpropAdminValueMapper.findAdminExtprop(custid);
    }
}
