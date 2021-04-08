package com.ruoyi.pms.chengben.service;

import java.util.List;
import com.ruoyi.pms.chengben.domain.Tax;

/**
 * 税Service接口
 * 
 * @author lengjun
 * @date 2021-03-20
 */
public interface ITaxService 
{
    /**
     * 查询税
     * 
     * @param chengbenShuiId 税ID
     * @return 税
     */
    public Tax selectTaxById(String chengbenShuiId);

    /**
     * 查询税列表
     * 
     * @param tax 税
     * @return 税集合
     */
    public List<Tax> selectTaxList(Tax tax);

    /**
     * 新增税
     * 
     * @param tax 税
     * @return 结果
     */
    public int insertTax(Tax tax);

    /**
     * 修改税
     * 
     * @param tax 税
     * @return 结果
     */
    public int updateTax(Tax tax);

    /**
     * 批量删除税
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTaxByIds(String ids);

    /**
     * 删除税信息
     * 
     * @param chengbenShuiId 税ID
     * @return 结果
     */
    public int deleteTaxById(String chengbenShuiId);
}
