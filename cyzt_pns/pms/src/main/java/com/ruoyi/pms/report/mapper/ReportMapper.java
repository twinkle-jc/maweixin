package com.ruoyi.pms.report.mapper;


import java.util.List;
import com.ruoyi.pms.xiangmu.domain.XiangmuRenwu;
/**
 * 报表信息管理Mapper接口
 *
 * @author maweixin
 * @date 2021-04-06
 */
public interface ReportMapper {

    /**
     * 查询项目总数
     *
     * @return 项目总数
     */
    public int countXiangmu();

    /**
     * 查询任务总数
     *
     * @return 任务总数
     */
    public int countRenwu();

    /**
     * 查询某分组的任务总数
     *
     * @param fenzu 分组
     * @return 某分组的任务总数
     */
    public int countFenzuRenwu(String xiangmuRenwuFenzuId);

}


