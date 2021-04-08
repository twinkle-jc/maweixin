package com.ruoyi.pms.hetong.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pms.hetong.mapper.HetongMapper;
import com.ruoyi.pms.hetong.domain.Hetong;
import com.ruoyi.pms.hetong.service.IHetongService;
import com.ruoyi.common.core.text.Convert;

/**
 * 合同信息管理Service业务层处理
 * 
 * @author lengjun
 * @date 2021-03-20
 */
@Service
public class HetongServiceImpl implements IHetongService 
{
    @Autowired
    private HetongMapper hetongMapper;

    /**
     * 查询合同信息管理
     * 
     * @param hetongId 合同信息管理ID
     * @return 合同信息管理
     */
    @Override
    public Hetong selectHetongById(String hetongId)
    {
        return hetongMapper.selectHetongById(hetongId);
    }

    /**
     * 查询合同信息管理列表
     * 
     * @param hetong 合同信息管理
     * @return 合同信息管理
     */
    @Override
    public List<Hetong> selectHetongList(Hetong hetong)
    {
        return hetongMapper.selectHetongList(hetong);
    }

    /**
     * 新增合同信息管理
     * 
     * @param hetong 合同信息管理
     * @return 结果
     */
    @Override
    public int insertHetong(Hetong hetong)
    {
        return hetongMapper.insertHetong(hetong);
    }

    /**
     * 修改合同信息管理
     * 
     * @param hetong 合同信息管理
     * @return 结果
     */
    @Override
    public int updateHetong(Hetong hetong)
    {
        return hetongMapper.updateHetong(hetong);
    }

    /**
     * 删除合同信息管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteHetongByIds(String ids)
    {
        return hetongMapper.deleteHetongByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除合同信息管理信息
     * 
     * @param hetongId 合同信息管理ID
     * @return 结果
     */
    @Override
    public int deleteHetongById(String hetongId)
    {
        return hetongMapper.deleteHetongById(hetongId);
    }
}
