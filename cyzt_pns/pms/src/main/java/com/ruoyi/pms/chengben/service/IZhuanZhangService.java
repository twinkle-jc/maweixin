package com.ruoyi.pms.chengben.service;

import java.util.List;
import com.ruoyi.pms.chengben.domain.ZhuanZhang;

/**
 * 转账Service接口
 * 
 * @author lengjun
 * @date 2021-03-28
 */
public interface IZhuanZhangService 
{
    /**
     * 查询转账
     * 
     * @param chengbenZhuanzhangId 转账ID
     * @return 转账
     */
    public ZhuanZhang selectZhuanZhangById(String chengbenZhuanzhangId);

    /**
     * 查询转账列表
     * 
     * @param zhuanZhang 转账
     * @return 转账集合
     */
    public List<ZhuanZhang> selectZhuanZhangList(ZhuanZhang zhuanZhang);

    /**
     * 新增转账
     * 
     * @param zhuanZhang 转账
     * @return 结果
     */
    public int insertZhuanZhang(ZhuanZhang zhuanZhang);

    /**
     * 修改转账
     * 
     * @param zhuanZhang 转账
     * @return 结果
     */
    public int updateZhuanZhang(ZhuanZhang zhuanZhang);

    /**
     * 批量删除转账
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteZhuanZhangByIds(String ids);

    /**
     * 删除转账信息
     * 
     * @param chengbenZhuanzhangId 转账ID
     * @return 结果
     */
    public int deleteZhuanZhangById(String chengbenZhuanzhangId);
}
