package com.ruoyi.pms.chengben.mapper;

import java.util.List;
import com.ruoyi.pms.chengben.domain.Baoxiao;

/**
 * 报销管理Mapper接口
 * 
 * @author lengjun
 * @date 2021-03-19
 */
public interface BaoxiaoMapper 
{
    /**
     * 查询报销管理
     * 
     * @param chengbenBaoxiaoId 报销管理ID
     * @return 报销管理
     */
    public Baoxiao selectBaoxiaoById(String chengbenBaoxiaoId);

    /**
     * 查询报销管理列表
     * 
     * @param baoxiao 报销管理
     * @return 报销管理集合
     */
    public List<Baoxiao> selectBaoxiaoList(Baoxiao baoxiao);

    /**
     * 新增报销管理
     * 
     * @param baoxiao 报销管理
     * @return 结果
     */
    public int insertBaoxiao(Baoxiao baoxiao);

    /**
     * 修改报销管理
     * 
     * @param baoxiao 报销管理
     * @return 结果
     */
    public int updateBaoxiao(Baoxiao baoxiao);

    /**
     * 删除报销管理
     * 
     * @param chengbenBaoxiaoId 报销管理ID
     * @return 结果
     */
    public int deleteBaoxiaoById(String chengbenBaoxiaoId);

    /**
     * 批量删除报销管理
     * 
     * @param chengbenBaoxiaoIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteBaoxiaoByIds(String[] chengbenBaoxiaoIds);
}
