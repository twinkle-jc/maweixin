package com.ruoyi.pms.hetong.service;

import java.util.List;
import com.ruoyi.pms.hetong.domain.Hetong;

/**
 * 合同信息管理Service接口
 * 
 * @author lengjun
 * @date 2021-03-20
 */
public interface IHetongService 
{
    /**
     * 查询合同信息管理
     * 
     * @param hetongId 合同信息管理ID
     * @return 合同信息管理
     */
    public Hetong selectHetongById(String hetongId);

    /**
     * 查询合同信息管理列表
     * 
     * @param hetong 合同信息管理
     * @return 合同信息管理集合
     */
    public List<Hetong> selectHetongList(Hetong hetong);

    /**
     * 新增合同信息管理
     * 
     * @param hetong 合同信息管理
     * @return 结果
     */
    public int insertHetong(Hetong hetong);

    /**
     * 修改合同信息管理
     * 
     * @param hetong 合同信息管理
     * @return 结果
     */
    public int updateHetong(Hetong hetong);

    /**
     * 批量删除合同信息管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteHetongByIds(String ids);

    /**
     * 删除合同信息管理信息
     * 
     * @param hetongId 合同信息管理ID
     * @return 结果
     */
    public int deleteHetongById(String hetongId);
}
