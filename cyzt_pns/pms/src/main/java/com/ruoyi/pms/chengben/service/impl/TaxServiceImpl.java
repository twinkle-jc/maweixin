package com.ruoyi.pms.chengben.service.impl;

import java.util.List;

import com.ruoyi.common.utils.uuid.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pms.chengben.mapper.TaxMapper;
import com.ruoyi.pms.chengben.domain.Tax;
import com.ruoyi.pms.chengben.service.ITaxService;
import com.ruoyi.common.core.text.Convert;

/**
 * 税Service业务层处理
 * 
 * @author lengjun
 * @date 2021-03-20
 */
@Service
public class TaxServiceImpl implements ITaxService 
{
    @Autowired
    private TaxMapper taxMapper;

    /**
     * 查询税
     * 
     * @param chengbenShuiId 税ID
     * @return 税
     */
    @Override
    public Tax selectTaxById(String chengbenShuiId)
    {
        return taxMapper.selectTaxById(chengbenShuiId);
    }

    /**
     * 查询税列表
     * 
     * @param tax 税
     * @return 税
     */
    @Override
    public List<Tax> selectTaxList(Tax tax)
    {
        return taxMapper.selectTaxList(tax);
    }

    /**
     * 新增税
     * 
     * @param tax 税
     * @return 结果
     */
    @Override
    public int insertTax(Tax tax)
    {
        tax.setChengbenShuiId(IdUtils.fastSimpleUUID());
        return taxMapper.insertTax(tax);
    }

    /**
     * 修改税
     * 
     * @param tax 税
     * @return 结果
     */
    @Override
    public int updateTax(Tax tax)
    {
        return taxMapper.updateTax(tax);
    }

    /**
     * 删除税对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTaxByIds(String ids)
    {
        return taxMapper.deleteTaxByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除税信息
     * 
     * @param chengbenShuiId 税ID
     * @return 结果
     */
    @Override
    public int deleteTaxById(String chengbenShuiId)
    {
        return taxMapper.deleteTaxById(chengbenShuiId);
    }
}
