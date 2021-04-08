package com.ruoyi.pms.chengben.mapper;

import java.util.List;
import com.ruoyi.pms.chengben.domain.Gongzi;

/**
 * 工资Mapper接口
 * 
 * @author lengjun
 * @date 2021-03-19
 */
public interface GongziMapper 
{
    /**
     * 查询工资
     * 
     * @param chengbenGongziId 工资ID
     * @return 工资
     */
    public Gongzi selectGongziById(String chengbenGongziId);

    /**
     * 查询工资列表
     * 
     * @param gongzi 工资
     * @return 工资集合
     */
    public List<Gongzi> selectGongziList(Gongzi gongzi);

    /**
     * 新增工资
     * 
     * @param gongzi 工资
     * @return 结果
     */
    public int insertGongzi(Gongzi gongzi);

    /**
     * 修改工资
     * 
     * @param gongzi 工资
     * @return 结果
     */
    public int updateGongzi(Gongzi gongzi);

    /**
     * 删除工资
     * 
     * @param chengbenGongziId 工资ID
     * @return 结果
     */
    public int deleteGongziById(String chengbenGongziId);

    /**
     * 批量删除工资
     * 
     * @param chengbenGongziIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteGongziByIds(String[] chengbenGongziIds);
}
