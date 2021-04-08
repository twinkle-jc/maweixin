package com.ruoyi.pms.report.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.pms.report.service.IReportService;
import com.ruoyi.pms.xiangmu.domain.XiangmuInfo;
import com.ruoyi.pms.xiangmu.service.IXiangmuInfoService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * 基本报表统计Controller
 * 
 * @author maweixin
 * @date 2021-04-07
 */
@Controller
@RequestMapping("/report")
public class BaseReportController extends BaseController
{
    private String prefix = "report/";

    @Autowired
    private IReportService reportService;

    @RequiresPermissions("report:renwu:view")
    @RequestMapping("/renwu")
    public String renwu() {  return prefix + "/renwu"; }

    /**
     * 查询项目总数
     */
    @RequiresPermissions("report:renwu:sum")
    @Log(title = "合同信息管理",businessType = BusinessType.OTHER)
    @GetMapping("/xiangmu/sum")
    @ResponseBody
    public int sumXiangmu()
    {
        int sumXiangmu = reportService.countXiangmu();
        return sumXiangmu;
    }
    /**
     * 查询任务总数
     */
    @RequiresPermissions("report:renwu:sum")
    @Log(title = "合同信息管理",businessType = BusinessType.OTHER)
    @GetMapping("/renwu/sum")
    @ResponseBody
    public int sumRenwu()
    {
        int sumRenwu = reportService.countRenwu();
        return sumRenwu;
    }
    @RequiresPermissions("report:renwu:sum")
    @Log(title = "合同信息管理",businessType = BusinessType.OTHER)
    @GetMapping("/fenzurenwu/sum")
    @ResponseBody
    public int sumFenzuRenwu(String xiangmuRenwuFenzuId)
    {

        xiangmuRenwuFenzuId="01";
        int sumFenzuRenwu = reportService.countFenzuRenwu(xiangmuRenwuFenzuId);
        return sumFenzuRenwu;
    }


}
