package com.ruoyi.pms.report.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pms.report.mapper.ReportMapper;
import com.ruoyi.pms.xiangmu.domain.XiangmuRenwu;
import com.ruoyi.pms.report.service.IReportService;
import com.ruoyi.common.core.text.Convert;

/**
 * 报表管理Service业务层处理
 *
 * @author maweixin
 * @date 2021-04-07
 */
@Service
public class ReportServiceImpl implements IReportService
{

    @Autowired
    private ReportMapper reportMapper;

    /**
     * 查询项目总数
     *
     * @return 项目总数
     */
    @Override
    public int countXiangmu(){return reportMapper.countXiangmu();}

    /**
     * 查询任务总数
     *
     * @return 任务总数
     */
    @Override
    public int countRenwu(){return reportMapper.countRenwu();}

    /**
     * 查询某分组的任务总数
     *
     * @param fenzu 分组
     * @return 某分组的任务总数
     */
    @Override
    public int countFenzuRenwu(String xiangmuRenwuFenzuId){return reportMapper.countFenzuRenwu(xiangmuRenwuFenzuId);}


}
