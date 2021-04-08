package com.ruoyi.pms.xiangmu.mapper;

import java.util.List;
import com.ruoyi.pms.xiangmu.domain.XiangmuInfo;
import com.ruoyi.pms.xiangmu.domain.XiangmuRenwu;

/**
 * 项目信息管理Mapper接口
 * 
 * @author lengjun
 * @date 2021-04-04
 */
public interface XiangmuInfoMapper 
{
    /**
     * 查询项目信息管理
     * 
     * @param xiangmuId 项目信息管理ID
     * @return 项目信息管理
     */
    public XiangmuInfo selectXiangmuInfoById(String xiangmuId);

    /**
     * 查询项目信息管理列表
     * 
     * @param xiangmuInfo 项目信息管理
     * @return 项目信息管理集合
     */
    public List<XiangmuInfo> selectXiangmuInfoList(XiangmuInfo xiangmuInfo);

    /**
     * 新增项目信息管理
     * 
     * @param xiangmuInfo 项目信息管理
     * @return 结果
     */
    public int insertXiangmuInfo(XiangmuInfo xiangmuInfo);

    /**
     * 修改项目信息管理
     * 
     * @param xiangmuInfo 项目信息管理
     * @return 结果
     */
    public int updateXiangmuInfo(XiangmuInfo xiangmuInfo);

    /**
     * 删除项目信息管理
     * 
     * @param xiangmuId 项目信息管理ID
     * @return 结果
     */
    public int deleteXiangmuInfoById(String xiangmuId);

    /**
     * 批量删除项目信息管理
     * 
     * @param xiangmuIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteXiangmuInfoByIds(String[] xiangmuIds);

    /**
     * 批量删除项目任务信息管理
     * 
     * @param customerIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteXiangmuRenwuByXiangmuIds(String[] xiangmuIds);
    
    /**
     * 批量新增项目任务信息管理
     * 
     * @param xiangmuRenwuList 项目任务信息管理列表
     * @return 结果
     */
    public int batchXiangmuRenwu(List<XiangmuRenwu> xiangmuRenwuList);
    

    /**
     * 通过项目信息管理ID删除项目任务信息管理信息
     * 
     * @param roleId 角色ID
     * @return 结果
     */
    public int deleteXiangmuRenwuByXiangmuId(String xiangmuId);
}
