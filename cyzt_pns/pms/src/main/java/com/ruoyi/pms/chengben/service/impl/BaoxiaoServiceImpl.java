package com.ruoyi.pms.chengben.service.impl;

import java.util.List;

import com.ruoyi.common.utils.uuid.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pms.chengben.mapper.BaoxiaoMapper;
import com.ruoyi.pms.chengben.domain.Baoxiao;
import com.ruoyi.pms.chengben.service.IBaoxiaoService;
import com.ruoyi.common.core.text.Convert;

/**
 * 报销管理Service业务层处理
 * 
 * @author lengjun
 * @date 2021-03-19
 */
@Service
public class BaoxiaoServiceImpl implements IBaoxiaoService 
{
    @Autowired
    private BaoxiaoMapper baoxiaoMapper;

    /**
     * 查询报销管理
     * 
     * @param chengbenBaoxiaoId 报销管理ID
     * @return 报销管理
     */
    @Override
    public Baoxiao selectBaoxiaoById(String chengbenBaoxiaoId)
    {
        return baoxiaoMapper.selectBaoxiaoById(chengbenBaoxiaoId);
    }

    /**
     * 查询报销管理列表
     * 
     * @param baoxiao 报销管理
     * @return 报销管理
     */
    @Override
    public List<Baoxiao> selectBaoxiaoList(Baoxiao baoxiao)
    {
        return baoxiaoMapper.selectBaoxiaoList(baoxiao);
    }

    /**
     * 新增报销管理
     * 
     * @param baoxiao 报销管理
     * @return 结果
     */
    @Override
    public int insertBaoxiao(Baoxiao baoxiao)
    {
        baoxiao.setChengbenBaoxiaoId(IdUtils.fastSimpleUUID());
        return baoxiaoMapper.insertBaoxiao(baoxiao);
    }

    /**
     * 修改报销管理
     * 
     * @param baoxiao 报销管理
     * @return 结果
     */
    @Override
    public int updateBaoxiao(Baoxiao baoxiao)
    {
        return baoxiaoMapper.updateBaoxiao(baoxiao);
    }

    /**
     * 删除报销管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteBaoxiaoByIds(String ids)
    {
        return baoxiaoMapper.deleteBaoxiaoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除报销管理信息
     * 
     * @param chengbenBaoxiaoId 报销管理ID
     * @return 结果
     */
    @Override
    public int deleteBaoxiaoById(String chengbenBaoxiaoId)
    {
        return baoxiaoMapper.deleteBaoxiaoById(chengbenBaoxiaoId);
    }
}
