package com.ruoyi.pms.xiangmu.service;

import java.util.List;
import com.ruoyi.pms.xiangmu.domain.XiangmuInfo;

/**
 * 项目信息管理Service接口
 * 
 * @author lengjun
 * @date 2021-04-04
 */
public interface IXiangmuInfoService 
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
     * 批量删除项目信息管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteXiangmuInfoByIds(String ids);

    /**
     * 删除项目信息管理信息
     * 
     * @param xiangmuId 项目信息管理ID
     * @return 结果
     */
    public int deleteXiangmuInfoById(String xiangmuId);
}
