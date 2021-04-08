package com.ruoyi.pms.chengben.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 税对象 pms_chengben_shui
 * 
 * @author lengjun
 * @date 2021-03-20
 */
public class Tax extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 税主键 */
    private String chengbenShuiId;

    /** 金额 */
    @Excel(name = "金额")
    private Double chengbenShuiJine;

    /** 类型 */
    @Excel(name = "类型")
    private String chengbenShuiType;

    /** 日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date chengbenShuiRiqi;

    /** 备注 */
    @Excel(name = "备注")
    private String chengbenShuiNote;

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

    public void setChengbenShuiId(String chengbenShuiId) 
    {
        this.chengbenShuiId = chengbenShuiId;
    }

    public String getChengbenShuiId() 
    {
        return chengbenShuiId;
    }
    public void setChengbenShuiJine(Double chengbenShuiJine) 
    {
        this.chengbenShuiJine = chengbenShuiJine;
    }

    public Double getChengbenShuiJine() 
    {
        return chengbenShuiJine;
    }
    public void setChengbenShuiType(String chengbenShuiType) 
    {
        this.chengbenShuiType = chengbenShuiType;
    }

    public String getChengbenShuiType() 
    {
        return chengbenShuiType;
    }
    public void setChengbenShuiRiqi(Date chengbenShuiRiqi) 
    {
        this.chengbenShuiRiqi = chengbenShuiRiqi;
    }

    public Date getChengbenShuiRiqi() 
    {
        return chengbenShuiRiqi;
    }
    public void setChengbenShuiNote(String chengbenShuiNote) 
    {
        this.chengbenShuiNote = chengbenShuiNote;
    }

    public String getChengbenShuiNote() 
    {
        return chengbenShuiNote;
    }
    public void setCreateuser(Long createuser) 
    {
        this.createuser = createuser;
    }

    public Long getCreateuser() 
    {
        return createuser;
    }

    public void setCreatetime(Date createtime)
    {
        this.createtime = createtime;
    }
    public Date getCreatetime()
    {
        return createtime;
    }

    public void setModifyuser(Long modifyuser) 
    {
        this.modifyuser = modifyuser;
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
            .append("chengbenShuiId", getChengbenShuiId())
            .append("chengbenShuiJine", getChengbenShuiJine())
            .append("chengbenShuiType", getChengbenShuiType())
            .append("chengbenShuiRiqi", getChengbenShuiRiqi())
            .append("chengbenShuiNote", getChengbenShuiNote())
            .append("createuser", getCreateuser())
            .append("createtime", getCreatetime())
            .append("modifyuser", getModifyuser())
            .append("modifytime", getModifytime())
            .append("isDel", getIsDel())
            .toString();
    }
}
