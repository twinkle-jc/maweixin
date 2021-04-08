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
import com.ruoyi.pms.chengben.domain.Tax;
import com.ruoyi.pms.chengben.service.ITaxService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 税Controller
 * 
 * @author lengjun
 * @date 2021-03-20
 */
@Controller
@RequestMapping("/chengben/Tax")
public class TaxController extends BaseController
{
    private String prefix = "chengben/Tax";

    @Autowired
    private ITaxService taxService;

    @RequiresPermissions("chengben:Tax:view")
    @GetMapping()
    public String Tax()
    {
        return prefix + "/Tax";
    }

    /**
     * 查询税列表
     */
    @RequiresPermissions("chengben:Tax:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Tax tax)
    {
        startPage();
        List<Tax> list = taxService.selectTaxList(tax);
        return getDataTable(list);
    }

    /**
     * 导出税列表
     */
    @RequiresPermissions("chengben:Tax:export")
    @Log(title = "税", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Tax tax)
    {
        List<Tax> list = taxService.selectTaxList(tax);
        ExcelUtil<Tax> util = new ExcelUtil<Tax>(Tax.class);
        return util.exportExcel(list, "Tax");
    }

    /**
     * 新增税
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存税
     */
    @RequiresPermissions("chengben:Tax:add")
    @Log(title = "税", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Tax tax)
    {
        return toAjax(taxService.insertTax(tax));
    }

    /**
     * 修改税
     */
    @GetMapping("/edit/{chengbenShuiId}")
    public String edit(@PathVariable("chengbenShuiId") String chengbenShuiId, ModelMap mmap)
    {
        Tax tax = taxService.selectTaxById(chengbenShuiId);
        mmap.put("tax", tax);
        return prefix + "/edit";
    }

    /**
     * 修改保存税
     */
    @RequiresPermissions("chengben:Tax:edit")
    @Log(title = "税", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Tax tax)
    {
        return toAjax(taxService.updateTax(tax));
    }

    /**
     * 删除税
     */
    @RequiresPermissions("chengben:Tax:remove")
    @Log(title = "税", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(taxService.deleteTaxByIds(ids));
    }
}
