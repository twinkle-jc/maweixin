package com.ruoyi.pms.hetong.controller;

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
import com.ruoyi.pms.hetong.domain.Hetong;
import com.ruoyi.pms.hetong.service.IHetongService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 合同信息管理Controller
 * 
 * @author lengjun
 * @date 2021-03-20
 */
@Controller
@RequestMapping("/hetong/hetong")
public class HetongController extends BaseController
{
    private String prefix = "hetong/hetong";

    @Autowired
    private IHetongService hetongService;

    @RequiresPermissions("hetong:hetong:view")
    @GetMapping()
    public String hetong()
    {
        return prefix + "/hetong";
    }

    /**
     * 查询合同信息管理列表
     */
    @RequiresPermissions("hetong:hetong:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Hetong hetong)
    {
        startPage();
        List<Hetong> list = hetongService.selectHetongList(hetong);
        return getDataTable(list);
    }

    /**
     * 导出合同信息管理列表
     */
    @RequiresPermissions("hetong:hetong:export")
    @Log(title = "合同信息管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Hetong hetong)
    {
        List<Hetong> list = hetongService.selectHetongList(hetong);
        ExcelUtil<Hetong> util = new ExcelUtil<Hetong>(Hetong.class);
        return util.exportExcel(list, "hetong");
    }

    /**
     * 新增合同信息管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存合同信息管理
     */
    @RequiresPermissions("hetong:hetong:add")
    @Log(title = "合同信息管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Hetong hetong)
    {
        return toAjax(hetongService.insertHetong(hetong));
    }

    /**
     * 修改合同信息管理
     */
    @GetMapping("/edit/{hetongId}")
    public String edit(@PathVariable("hetongId") String hetongId, ModelMap mmap)
    {
        Hetong hetong = hetongService.selectHetongById(hetongId);
        mmap.put("hetong", hetong);
        return prefix + "/edit";
    }

    /**
     * 修改保存合同信息管理
     */
    @RequiresPermissions("hetong:hetong:edit")
    @Log(title = "合同信息管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Hetong hetong)
    {
        return toAjax(hetongService.updateHetong(hetong));
    }

    /**
     * 删除合同信息管理
     */
    @RequiresPermissions("hetong:hetong:remove")
    @Log(title = "合同信息管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(hetongService.deleteHetongByIds(ids));
    }
}
