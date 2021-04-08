package com.ruoyi.pms.chengben.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 转账对象 pms_chengben_zhuanzhang
 * 
 * @author lengjun
 * @date 2021-03-28
 */
public class ZhuanZhang extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 转账表主键 */
    private String chengbenZhuanzhangId;

    /** 类型 */
    @Excel(name = "类型")
    private String chengbenZhuanzhangType;

    /** 金额 */
    @Excel(name = "金额")
    private Double chengbenZhuanzhangJine;

    /** 名称 */
    @Excel(name = "名称")
    private String chengbenZhuanzhangName;

    /** 是否收到专票 */
    @Excel(name = "是否收到专票")
    private Integer chengbenZhuanzhangIsshoudaozhuanpiao;

    /** 是否已转账 */
    @Excel(name = "是否已转账")
    private Integer chengbenZhuanzhangIsyizhuanzhang;

    /** 日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date chengbenZhuanzhangRiqi;

    /** 备注 */
    @Excel(name = "备注")
    private String chengbenZhuanzhangNote;

    /** 创建用户 */
    @Excel(name = "创建用户")
    private Long createuser;

    /** 创建用户 */
    @Excel(name = "创建时间")
    private Date createtime;

    /** 最后修改用户 */
    @Excel(name = "最后修改用户")
    private Long modifyuser;

    /** 最后修改时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "最后修改时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date modifytime;

    /** 是否删除 */
    @Excel(name = "是否删除")
    private Integer isDel;

    public void setChengbenZhuanzhangId(String chengbenZhuanzhangId) 
    {
        this.chengbenZhuanzhangId = chengbenZhuanzhangId;
    }

    public String getChengbenZhuanzhangId() 
    {
        return chengbenZhuanzhangId;
    }
    public void setChengbenZhuanzhangType(String chengbenZhuanzhangType) 
    {
        this.chengbenZhuanzhangType = chengbenZhuanzhangType;
    }

    public String getChengbenZhuanzhangType() 
    {
        return chengbenZhuanzhangType;
    }
    public void setChengbenZhuanzhangJine(Double chengbenZhuanzhangJine) 
    {
        this.chengbenZhuanzhangJine = chengbenZhuanzhangJine;
    }

    public Double getChengbenZhuanzhangJine() 
    {
        return chengbenZhuanzhangJine;
    }
    public void setChengbenZhuanzhangName(String chengbenZhuanzhangName) 
    {
        this.chengbenZhuanzhangName = chengbenZhuanzhangName;
    }

    public String getChengbenZhuanzhangName() 
    {
        return chengbenZhuanzhangName;
    }
    public void setChengbenZhuanzhangIsshoudaozhuanpiao(Integer chengbenZhuanzhangIsshoudaozhuanpiao) 
    {
        this.chengbenZhuanzhangIsshoudaozhuanpiao = chengbenZhuanzhangIsshoudaozhuanpiao;
    }

    public Integer getChengbenZhuanzhangIsshoudaozhuanpiao() 
    {
        return chengbenZhuanzhangIsshoudaozhuanpiao;
    }
    public void setChengbenZhuanzhangIsyizhuanzhang(Integer chengbenZhuanzhangIsyizhuanzhang) 
    {
        this.chengbenZhuanzhangIsyizhuanzhang = chengbenZhuanzhangIsyizhuanzhang;
    }

    public Integer getChengbenZhuanzhangIsyizhuanzhang() 
    {
        return chengbenZhuanzhangIsyizhuanzhang;
    }
    public void setChengbenZhuanzhangRiqi(Date chengbenZhuanzhangRiqi) 
    {
        this.chengbenZhuanzhangRiqi = chengbenZhuanzhangRiqi;
    }

    public Date getChengbenZhuanzhangRiqi() 
    {
        return chengbenZhuanzhangRiqi;
    }
    public void setChengbenZhuanzhangNote(String chengbenZhuanzhangNote) 
    {
        this.chengbenZhuanzhangNote = chengbenZhuanzhangNote;
    }

    public String getChengbenZhuanzhangNote() 
    {
        return chengbenZhuanzhangNote;
    }
    public void setCreateuser(Long createuser) 
    {
        this.createuser = createuser;
    }

    public Long getCreateuser() 
    {
        return createuser;
    }
    public void setModifyuser(Long modifyuser) 
    {
        this.modifyuser = modifyuser;
    }

    public void setCreatetime(Date createtime)
    {
        this.createtime = createtime;
    }
    public Date getCreatetime()
    {
        return createtime;
    }


    public Long getModifyuser() 
    {
        return modifyuser;
    }
    public void setModifytime(Date modifytime) 
    {
        this.modifytime = modifytime;
    }

    public Date getModifytime() 
    {
        return modifytime;
    }
    public void setIsDel(Integer isDel) 
    {
        this.isDel = isDel;
    }

    public Integer getIsDel() 
    {
        return isDel;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("chengbenZhuanzhangId", getChengbenZhuanzhangId())
            .append("chengbenZhuanzhangType", getChengbenZhuanzhangType())
            .append("chengbenZhuanzhangJine", getChengbenZhuanzhangJine())
            .append("chengbenZhuanzhangName", getChengbenZhuanzhangName())
            .append("chengbenZhuanzhangIsshoudaozhuanpiao", getChengbenZhuanzhangIsshoudaozhuanpiao())
            .append("chengbenZhuanzhangIsyizhuanzhang", getChengbenZhuanzhangIsyizhuanzhang())
            .append("chengbenZhuanzhangRiqi", getChengbenZhuanzhangRiqi())
            .append("chengbenZhuanzhangNote", getChengbenZhuanzhangNote())
            .append("createuser", getCreateuser())
            .append("createtime", getCreatetime())
            .append("modifyuser", getModifyuser())
            .append("modifytime", getModifytime())
            .append("isDel", getIsDel())
            .toString();
    }
}
