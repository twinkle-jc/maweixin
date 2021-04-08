package com.ruoyi.pms.chengben.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pms.chengben.mapper.ZhuanZhangMapper;
import com.ruoyi.pms.chengben.domain.ZhuanZhang;
import com.ruoyi.pms.chengben.service.IZhuanZhangService;
import com.ruoyi.common.core.text.Convert;

/**
 * 转账Service业务层处理
 * 
 * @author lengjun
 * @date 2021-03-28
 */
@Service
public class ZhuanZhangServiceImpl implements IZhuanZhangService 
{
    @Autowired
    private ZhuanZhangMapper zhuanZhangMapper;

    /**
     * 查询转账
     * 
     * @param chengbenZhuanzhangId 转账ID
     * @return 转账
     */
    @Override
    public ZhuanZhang selectZhuanZhangById(String chengbenZhuanzhangId)
    {
        return zhuanZhangMapper.selectZhuanZhangById(chengbenZhuanzhangId);
    }

    /**
     * 查询转账列表
     * 
     * @param zhuanZhang 转账
     * @return 转账
     */
    @Override
    public List<ZhuanZhang> selectZhuanZhangList(ZhuanZhang zhuanZhang)
    {
        return zhuanZhangMapper.selectZhuanZhangList(zhuanZhang);
    }

    /**
     * 新增转账
     * 
     * @param zhuanZhang 转账
     * @return 结果
     */
    @Override
    public int insertZhuanZhang(ZhuanZhang zhuanZhang)
    {
        return zhuanZhangMapper.insertZhuanZhang(zhuanZhang);
    }

    /**
     * 修改转账
     * 
     * @param zhuanZhang 转账
     * @return 结果
     */
    @Override
    public int updateZhuanZhang(ZhuanZhang zhuanZhang)
    {
        return zhuanZhangMapper.updateZhuanZhang(zhuanZhang);
    }

    /**
     * 删除转账对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteZhuanZhangByIds(String ids)
    {
        return zhuanZhangMapper.deleteZhuanZhangByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除转账信息
     * 
     * @param chengbenZhuanzhangId 转账ID
     * @return 结果
     */
    @Override
    public int deleteZhuanZhangById(String chengbenZhuanzhangId)
    {
        return zhuanZhangMapper.deleteZhuanZhangById(chengbenZhuanzhangId);
    }
}
