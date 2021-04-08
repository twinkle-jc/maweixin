package com.ruoyi.pms.hetong.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 合同信息管理对象 pms_hetong
 * 
 * @author lengjun
 * @date 2021-03-20
 */
public class Hetong extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 合同id */
    private String hetongId;

    /** 合同编码 */
    @Excel(name = "合同编码")
    private String hetongCode;

    /** 合同名称 */
    @Excel(name = "合同名称")
    private String hetongName;

    /** 合同类型 */
    @Excel(name = "合同类型")
    private String hetongType;

    /** 签订日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "签订日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date hetongQiandingriqi;

    /** 开始日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "开始日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date hetongKaishiriqi;

    /** 结束日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "结束日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date hetongJieshuriqi;

    /** 总金额 */
    @Excel(name = "总金额")
    private Double hetongZongjine;

    /** 状态 */
    @Excel(name = "状态")
    private String hetongZhuangtai;

    /** 备注 */
    @Excel(name = "备注")
    private String hetongNote;

    /** 创建用户 */
    @Excel(name = "创建用户")
    private Long createuser;

    /** 创建时间 */
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

    public void setHetongId(String hetongId) 
    {
        this.hetongId = hetongId;
    }

    public String getHetongId() 
    {
        return hetongId;
    }
    public void setHetongCode(String hetongCode) 
    {
        this.hetongCode = hetongCode;
    }

    public String getHetongCode() 
    {
        return hetongCode;
    }
    public void setHetongName(String hetongName) 
    {
        this.hetongName = hetongName;
    }

    public String getHetongName() 
    {
        return hetongName;
    }
    public void setHetongType(String hetongType) 
    {
        this.hetongType = hetongType;
    }

    public String getHetongType() 
    {
        return hetongType;
    }
    public void setHetongQiandingriqi(Date hetongQiandingriqi) 
    {
        this.hetongQiandingriqi = hetongQiandingriqi;
    }

    public Date getHetongQiandingriqi() 
    {
        return hetongQiandingriqi;
    }
    public void setHetongKaishiriqi(Date hetongKaishiriqi) 
    {
        this.hetongKaishiriqi = hetongKaishiriqi;
    }

    public Date getHetongKaishiriqi() 
    {
        return hetongKaishiriqi;
    }
    public void setHetongJieshuriqi(Date hetongJieshuriqi) 
    {
        this.hetongJieshuriqi = hetongJieshuriqi;
    }

    public Date getHetongJieshuriqi() 
    {
        return hetongJieshuriqi;
    }
    public void setHetongZongjine(Double hetongZongjine) 
    {
        this.hetongZongjine = hetongZongjine;
    }

    public Double getHetongZongjine() 
    {
        return hetongZongjine;
    }
    public void setHetongZhuangtai(String hetongZhuangtai) 
    {
        this.hetongZhuangtai = hetongZhuangtai;
    }

    public String getHetongZhuangtai() 
    {
        return hetongZhuangtai;
    }
    public void setHetongNote(String hetongNote) 
    {
        this.hetongNote = hetongNote;
    }

    public String getHetongNote() 
    {
        return hetongNote;
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
            .append("hetongId", getHetongId())
            .append("hetongCode", getHetongCode())
            .append("hetongName", getHetongName())
            .append("hetongType", getHetongType())
            .append("hetongQiandingriqi", getHetongQiandingriqi())
            .append("hetongKaishiriqi", getHetongKaishiriqi())
            .append("hetongJieshuriqi", getHetongJieshuriqi())
            .append("hetongZongjine", getHetongZongjine())
            .append("hetongZhuangtai", getHetongZhuangtai())
            .append("hetongNote", getHetongNote())
            .append("createuser", getCreateuser())
            .append("createtime", getCreatetime())
            .append("modifyuser", getModifyuser())
            .append("modifytime", getModifytime())
            .append("isDel", getIsDel())
            .toString();
    }
}
