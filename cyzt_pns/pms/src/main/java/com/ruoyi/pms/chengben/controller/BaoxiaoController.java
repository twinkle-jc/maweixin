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
import com.ruoyi.pms.chengben.domain.Baoxiao;
import com.ruoyi.pms.chengben.service.IBaoxiaoService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 报销管理Controller
 * 
 * @author lengjun
 * @date 2021-03-19
 */
@Controller
@RequestMapping("/chengben/BaoXiao")
public class BaoxiaoController extends BaseController
{
    private String prefix = "chengben/BaoXiao";

    @Autowired
    private IBaoxiaoService baoxiaoService;

    @RequiresPermissions("chengben:BaoXiao:view")
    @GetMapping()
    public String BaoXiao()
    {
        return prefix + "/BaoXiao";
    }

    /**
     * 查询报销管理列表
     */
    @RequiresPermissions("chengben:BaoXiao:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Baoxiao baoxiao)
    {
        startPage();
        List<Baoxiao> list = baoxiaoService.selectBaoxiaoList(baoxiao);
        return getDataTable(list);
    }

    /**
     * 导出报销管理列表
     */
    @RequiresPermissions("chengben:BaoXiao:export")
    @Log(title = "报销管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Baoxiao baoxiao)
    {
        List<Baoxiao> list = baoxiaoService.selectBaoxiaoList(baoxiao);
        ExcelUtil<Baoxiao> util = new ExcelUtil<Baoxiao>(Baoxiao.class);
        return util.exportExcel(list, "BaoXiao");
    }

    /**
     * 新增报销管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存报销管理
     */
    @RequiresPermissions("chengben:BaoXiao:add")
    @Log(title = "报销管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Baoxiao baoxiao)
    {
        return toAjax(baoxiaoService.insertBaoxiao(baoxiao));
    }

    /**
     * 修改报销管理
     */
    @GetMapping("/edit/{chengbenBaoxiaoId}")
    public String edit(@PathVariable("chengbenBaoxiaoId") String chengbenBaoxiaoId, ModelMap mmap)
    {
        Baoxiao baoxiao = baoxiaoService.selectBaoxiaoById(chengbenBaoxiaoId);
        mmap.put("baoxiao", baoxiao);
        return prefix + "/edit";
    }

    /**
     * 修改保存报销管理
     */
    @RequiresPermissions("chengben:BaoXiao:edit")
    @Log(title = "报销管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Baoxiao baoxiao)
    {
        return toAjax(baoxiaoService.updateBaoxiao(baoxiao));
    }

    /**
     * 删除报销管理
     */
    @RequiresPermissions("chengben:BaoXiao:remove")
    @Log(title = "报销管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(baoxiaoService.deleteBaoxiaoByIds(ids));
    }
}
