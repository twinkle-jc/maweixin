package com.ruoyi.pms.chengben.controller;

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
import com.ruoyi.pms.chengben.domain.Gongzi;
import com.ruoyi.pms.chengben.service.IGongziService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 工资Controller
 * 
 * @author lengjun
 * @date 2021-03-19
 */
@Controller
@RequestMapping("/chengben/gongzi")
public class GongziController extends BaseController
{
    private String prefix = "chengben/gongzi";

    @Autowired
    private IGongziService gongziService;

    @RequiresPermissions("chengben:gongzi:view")
    @GetMapping()
    public String gongzi()
    {
        return prefix + "/gongzi";
    }

    /**
     * 查询工资列表
     */
    @RequiresPermissions("chengben:gongzi:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Gongzi gongzi)
    {
        startPage();
        List<Gongzi> list = gongziService.selectGongziList(gongzi);
        return getDataTable(list);
    }

    /**
     * 导出工资列表
     */
    @RequiresPermissions("chengben:gongzi:export")
    @Log(title = "工资", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Gongzi gongzi)
    {
        List<Gongzi> list = gongziService.selectGongziList(gongzi);
        ExcelUtil<Gongzi> util = new ExcelUtil<Gongzi>(Gongzi.class);
        return util.exportExcel(list, "gongzi");
    }

    /**
     * 新增工资
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存工资
     */
    @RequiresPermissions("chengben:gongzi:add")
    @Log(title = "工资", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Gongzi gongzi)
    {
        return toAjax(gongziService.insertGongzi(gongzi));
    }

    /**
     * 修改工资
     */
    @GetMapping("/edit/{chengbenGongziId}")
    public String edit(@PathVariable("chengbenGongziId") String chengbenGongziId, ModelMap mmap)
    {
        Gongzi gongzi = gongziService.selectGongziById(chengbenGongziId);
        mmap.put("gongzi", gongzi);
        return prefix + "/edit";
    }

    /**
     * 修改保存工资
     */
    @RequiresPermissions("chengben:gongzi:edit")
    @Log(title = "工资", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Gongzi gongzi)
    {
        return toAjax(gongziService.updateGongzi(gongzi));
    }

    /**
     * 删除工资
     */
    @RequiresPermissions("chengben:gongzi:remove")
    @Log(title = "工资", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(gongziService.deleteGongziByIds(ids));
    }
}
