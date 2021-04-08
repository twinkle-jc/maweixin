package com.ruoyi.pms.chengben.service.impl;

import java.util.List;

import com.ruoyi.common.utils.uuid.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pms.chengben.mapper.GongziMapper;
import com.ruoyi.pms.chengben.domain.Gongzi;
import com.ruoyi.pms.chengben.service.IGongziService;
import com.ruoyi.common.core.text.Convert;

/**
 * 工资Service业务层处理
 * 
 * @author lengjun
 * @date 2021-03-19
 */
@Service
public class GongziServiceImpl implements IGongziService 
{
    @Autowired
    private GongziMapper gongziMapper;

    /**
     * 查询工资
     * 
     * @param chengbenGongziId 工资ID
     * @return 工资
     */
    @Override
    public Gongzi selectGongziById(String chengbenGongziId)
    {
        return gongziMapper.selectGongziById(chengbenGongziId);
    }

    /**
     * 查询工资列表
     * 
     * @param gongzi 工资
     * @return 工资
     */
    @Override
    public List<Gongzi> selectGongziList(Gongzi gongzi)
    {
        return gongziMapper.selectGongziList(gongzi);
    }

    /**
     * 新增工资
     * 
     * @param gongzi 工资
     * @return 结果
     */
    @Override
    public int insertGongzi(Gongzi gongzi)
    {
        gongzi.setChengbenGongziId(IdUtils.fastSimpleUUID());
        return gongziMapper.insertGongzi(gongzi);
    }

    /**
     * 修改工资
     * 
     * @param gongzi 工资
     * @return 结果
     */
    @Override
    public int updateGongzi(Gongzi gongzi)
    {
        return gongziMapper.updateGongzi(gongzi);
    }

    /**
     * 删除工资对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteGongziByIds(String ids)
    {
        return gongziMapper.deleteGongziByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除工资信息
     * 
     * @param chengbenGongziId 工资ID
     * @return 结果
     */
    @Override
    public int deleteGongziById(String chengbenGongziId)
    {
        return gongziMapper.deleteGongziById(chengbenGongziId);
    }
}
