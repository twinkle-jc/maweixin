package com.ruoyi.pms.xiangmu.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.pms.xiangmu.domain.XiangmuInfo;
import com.ruoyi.pms.xiangmu.service.IXiangmuInfoService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 项目信息管理Controller
 * 
 * @author lengjun
 * @date 2021-04-04
 */
@Controller
@RequestMapping("/xiangmu/xiangmuInfo")
public class XiangmuInfoController extends BaseController
{
    private String prefix = "xiangmu/xiangmuInfo";

    @Autowired
    private IXiangmuInfoService xiangmuInfoService;

    @RequiresPermissions("xiangmu:xiangmuInfo:view")
    @GetMapping()
    public String xiangmuInfo()
    {
        return prefix + "/xiangmuInfo";
    }

    /**
     * 查询项目信息管理列表
     */
    @RequiresPermissions("xiangmu:xiangmuInfo:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(XiangmuInfo xiangmuInfo)
    {
        startPage();
        List<XiangmuInfo> list = xiangmuInfoService.selectXiangmuInfoList(xiangmuInfo);
        return getDataTable(list);
    }

    /**
     * 导出项目信息管理列表
     */
    @RequiresPermissions("xiangmu:xiangmuInfo:export")
    @Log(title = "项目信息管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(XiangmuInfo xiangmuInfo)
    {
        List<XiangmuInfo> list = xiangmuInfoService.selectXiangmuInfoList(xiangmuInfo);
        ExcelUtil<XiangmuInfo> util = new ExcelUtil<XiangmuInfo>(XiangmuInfo.class);
        return util.exportExcel(list, "xiangmuInfo");
    }

    /**
     * 新增项目信息管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存项目信息管理
     */
    @RequiresPermissions("xiangmu:xiangmuInfo:add")
    @Log(title = "项目信息管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(XiangmuInfo xiangmuInfo)
    {
        return toAjax(xiangmuInfoService.insertXiangmuInfo(xiangmuInfo));
    }

    /**
     * 修改项目信息管理
     */
    @GetMapping("/edit/{xiangmuId}")
    public String edit(@PathVariable("xiangmuId") String xiangmuId, ModelMap mmap)
    {
        XiangmuInfo xiangmuInfo = xiangmuInfoService.selectXiangmuInfoById(xiangmuId);
        mmap.put("xiangmuInfo", xiangmuInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存项目信息管理
     */
    @RequiresPermissions("xiangmu:xiangmuInfo:edit")
    @Log(title = "项目信息管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(XiangmuInfo xiangmuInfo)
    {
        return toAjax(xiangmuInfoService.updateXiangmuInfo(xiangmuInfo));
    }

    /**
     * 删除项目信息管理
     */
    @RequiresPermissions("xiangmu:xiangmuInfo:remove")
    @Log(title = "项目信息管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(xiangmuInfoService.deleteXiangmuInfoByIds(ids));
    }
}
