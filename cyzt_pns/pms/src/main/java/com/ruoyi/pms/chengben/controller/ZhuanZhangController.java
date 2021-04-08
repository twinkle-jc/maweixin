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
import com.ruoyi.pms.chengben.domain.ZhuanZhang;
import com.ruoyi.pms.chengben.service.IZhuanZhangService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 转账Controller
 * 
 * @author lengjun
 * @date 2021-03-28
 */
@Controller
@RequestMapping("/chengben/zhuanzhang")
public class ZhuanZhangController extends BaseController
{
    private String prefix = "chengben/zhuanzhang";

    @Autowired
    private IZhuanZhangService zhuanZhangService;

    @RequiresPermissions("chengben:zhuanzhang:view")
    @GetMapping()
    public String zhuanzhang()
    {
        return prefix + "/zhuanzhang";
    }

    /**
     * 查询转账列表
     */
    @RequiresPermissions("chengben:zhuanzhang:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ZhuanZhang zhuanZhang)
    {
        startPage();
        List<ZhuanZhang> list = zhuanZhangService.selectZhuanZhangList(zhuanZhang);
        return getDataTable(list);
    }

    /**
     * 导出转账列表
     */
    @RequiresPermissions("chengben:zhuanzhang:export")
    @Log(title = "转账", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ZhuanZhang zhuanZhang)
    {
        List<ZhuanZhang> list = zhuanZhangService.selectZhuanZhangList(zhuanZhang);
        ExcelUtil<ZhuanZhang> util = new ExcelUtil<ZhuanZhang>(ZhuanZhang.class);
        return util.exportExcel(list, "zhuanzhang");
    }

    /**
     * 新增转账
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存转账
     */
    @RequiresPermissions("chengben:zhuanzhang:add")
    @Log(title = "转账", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ZhuanZhang zhuanZhang)
    {
        return toAjax(zhuanZhangService.insertZhuanZhang(zhuanZhang));
    }

    /**
     * 修改转账
     */
    @GetMapping("/edit/{chengbenZhuanzhangId}")
    public String edit(@PathVariable("chengbenZhuanzhangId") String chengbenZhuanzhangId, ModelMap mmap)
    {
        ZhuanZhang zhuanZhang = zhuanZhangService.selectZhuanZhangById(chengbenZhuanzhangId);
        mmap.put("zhuanZhang", zhuanZhang);
        return prefix + "/edit";
    }

    /**
     * 修改保存转账
     */
    @RequiresPermissions("chengben:zhuanzhang:edit")
    @Log(title = "转账", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ZhuanZhang zhuanZhang)
    {
        return toAjax(zhuanZhangService.updateZhuanZhang(zhuanZhang));
    }

    /**
     * 删除转账
     */
    @RequiresPermissions("chengben:zhuanzhang:remove")
    @Log(title = "转账", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(zhuanZhangService.deleteZhuanZhangByIds(ids));
    }
}
