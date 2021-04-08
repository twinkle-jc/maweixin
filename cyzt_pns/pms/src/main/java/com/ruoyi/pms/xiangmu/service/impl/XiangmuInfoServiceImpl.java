package com.ruoyi.pms.xiangmu.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.pms.xiangmu.domain.XiangmuRenwu;
import com.ruoyi.pms.xiangmu.mapper.XiangmuInfoMapper;
import com.ruoyi.pms.xiangmu.domain.XiangmuInfo;
import com.ruoyi.pms.xiangmu.service.IXiangmuInfoService;
import com.ruoyi.common.core.text.Convert;

/**
 * 项目信息管理Service业务层处理
 * 
 * @author lengjun
 * @date 2021-04-04
 */
@Service
public class XiangmuInfoServiceImpl implements IXiangmuInfoService 
{
    @Autowired
    private XiangmuInfoMapper xiangmuInfoMapper;

    /**
     * 查询项目信息管理
     * 
     * @param xiangmuId 项目信息管理ID
     * @return 项目信息管理
     */
    @Override
    public XiangmuInfo selectXiangmuInfoById(String xiangmuId)
    {
        return xiangmuInfoMapper.selectXiangmuInfoById(xiangmuId);
    }

    /**
     * 查询项目信息管理列表
     * 
     * @param xiangmuInfo 项目信息管理
     * @return 项目信息管理
     */
    @Override
    public List<XiangmuInfo> selectXiangmuInfoList(XiangmuInfo xiangmuInfo)
    {
        return xiangmuInfoMapper.selectXiangmuInfoList(xiangmuInfo);
    }

    /**
     * 新增项目信息管理
     * 
     * @param xiangmuInfo 项目信息管理
     * @return 结果
     */
    @Transactional
    @Override
    public int insertXiangmuInfo(XiangmuInfo xiangmuInfo)
    {
        int rows = xiangmuInfoMapper.insertXiangmuInfo(xiangmuInfo);
        insertXiangmuRenwu(xiangmuInfo);
        return rows;
    }

    /**
     * 修改项目信息管理
     * 
     * @param xiangmuInfo 项目信息管理
     * @return 结果
     */
    @Transactional
    @Override
    public int updateXiangmuInfo(XiangmuInfo xiangmuInfo)
    {
        xiangmuInfoMapper.deleteXiangmuRenwuByXiangmuId(xiangmuInfo.getXiangmuId());
        insertXiangmuRenwu(xiangmuInfo);
        return xiangmuInfoMapper.updateXiangmuInfo(xiangmuInfo);
    }

    /**
     * 删除项目信息管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteXiangmuInfoByIds(String ids)
    {
        xiangmuInfoMapper.deleteXiangmuRenwuByXiangmuIds(Convert.toStrArray(ids));
        return xiangmuInfoMapper.deleteXiangmuInfoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除项目信息管理信息
     * 
     * @param xiangmuId 项目信息管理ID
     * @return 结果
     */
    @Override
    public int deleteXiangmuInfoById(String xiangmuId)
    {
        xiangmuInfoMapper.deleteXiangmuRenwuByXiangmuId(xiangmuId);
        return xiangmuInfoMapper.deleteXiangmuInfoById(xiangmuId);
    }

    /**
     * 新增项目任务信息管理信息
     * 
     * @param xiangmuInfo 项目信息管理对象
     */
    public void insertXiangmuRenwu(XiangmuInfo xiangmuInfo)
    {
        List<XiangmuRenwu> xiangmuRenwuList = xiangmuInfo.getXiangmuRenwuList();
        String xiangmuId = xiangmuInfo.getXiangmuId();
        if (StringUtils.isNotNull(xiangmuRenwuList))
        {
            List<XiangmuRenwu> list = new ArrayList<XiangmuRenwu>();
            for (XiangmuRenwu xiangmuRenwu : xiangmuRenwuList)
            {
                xiangmuRenwu.setXiangmuId(xiangmuId);
                list.add(xiangmuRenwu);
            }
            if (list.size() > 0)
            {
                xiangmuInfoMapper.batchXiangmuRenwu(list);
            }
        }
    }
}
