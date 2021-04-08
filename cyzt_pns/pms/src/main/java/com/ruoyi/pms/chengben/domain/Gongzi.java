package com.ruoyi.pms.chengben.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 工资对象 pms_chengben_gongzi
 * 
 * @author lengjun
 * @date 2021-03-19
 */
public class Gongzi extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 工资表主键 */
    private String chengbenGongziId;

    /** 类型 */
    @Excel(name = "类型")
    private String chengbenGongziType;

    /** 月份 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "月份", width = 30, dateFormat = "yyyy-MM-dd")
    private Date chengbenGongziYuefen;

    /** 应发工资 */
    @Excel(name = "应发工资")
    private Double chengbenGongziYingfa;

    /** 个人社保 */
    @Excel(name = "个人社保")
    private Double chengbenGongziGerenshebao;

    /** 个税 */
    @Excel(name = "个税")
    private Double chengbenGongziGeshui;

    /** 补发补缴 */
    @Excel(name = "补发补缴")
    private Double chengbenGongziBufabujiao;

    /** 实发 */
    @Excel(name = "实发")
    private Double chengbenGongziShifa;

    /** 公司社保 */
    @Excel(name = "公司社保")
    private Double chengbenGongziGongsishebao;

    /** 用工成本 */
    @Excel(name = "用工成本")
    private Double chengbenGongziYonggongchengben;

    /** 备注 */
    @Excel(name = "备注")
    private String chengbenGongziNote;

    /** 发薪人员 */
    @Excel(name = "发薪人员")
    private Long chengbenGongziFaxinren;

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

    public void setChengbenGongziId(String chengbenGongziId) 
    {
        this.chengbenGongziId = chengbenGongziId;
    }

    public String getChengbenGongziId() 
    {
        return chengbenGongziId;
    }
    public void setChengbenGongziType(String chengbenGongziType) 
    {
        this.chengbenGongziType = chengbenGongziType;
    }

    public String getChengbenGongziType() 
    {
        return chengbenGongziType;
    }
    public void setChengbenGongziYuefen(Date chengbenGongziYuefen) 
    {
        this.chengbenGongziYuefen = chengbenGongziYuefen;
    }

    public Date getChengbenGongziYuefen() 
    {
        return chengbenGongziYuefen;
    }
    public void setChengbenGongziYingfa(Double chengbenGongziYingfa) 
    {
        this.chengbenGongziYingfa = chengbenGongziYingfa;
    }

    public Double getChengbenGongziYingfa() 
    {
        return chengbenGongziYingfa;
    }
    public void setChengbenGongziGerenshebao(Double chengbenGongziGerenshebao) 
    {
        this.chengbenGongziGerenshebao = chengbenGongziGerenshebao;
    }

    public Double getChengbenGongziGerenshebao() 
    {
        return chengbenGongziGerenshebao;
    }
    public void setChengbenGongziGeshui(Double chengbenGongziGeshui) 
    {
        this.chengbenGongziGeshui = chengbenGongziGeshui;
    }

    public Double getChengbenGongziGeshui() 
    {
        return chengbenGongziGeshui;
    }
    public void setChengbenGongziBufabujiao(Double chengbenGongziBufabujiao) 
    {
        this.chengbenGongziBufabujiao = chengbenGongziBufabujiao;
    }

    public Double getChengbenGongziBufabujiao() 
    {
        return chengbenGongziBufabujiao;
    }
    public void setChengbenGongziShifa(Double chengbenGongziShifa) 
    {
        this.chengbenGongziShifa = chengbenGongziShifa;
    }

    public Double getChengbenGongziShifa() 
    {
        return chengbenGongziShifa;
    }
    public void setChengbenGongziGongsishebao(Double chengbenGongziGongsishebao) 
    {
        this.chengbenGongziGongsishebao = chengbenGongziGongsishebao;
    }

    public Double getChengbenGongziGongsishebao() 
    {
        return chengbenGongziGongsishebao;
    }
    public void setChengbenGongziYonggongchengben(Double chengbenGongziYonggongchengben) 
    {
        this.chengbenGongziYonggongchengben = chengbenGongziYonggongchengben;
    }

    public Double getChengbenGongziYonggongchengben() 
    {
        return chengbenGongziYonggongchengben;
    }
    public void setChengbenGongziNote(String chengbenGongziNote) 
    {
        this.chengbenGongziNote = chengbenGongziNote;
    }

    public String getChengbenGongziNote() 
    {
        return chengbenGongziNote;
    }
    public void setChengbenGongziFaxinren(Long chengbenGongziFaxinren) 
    {
        this.chengbenGongziFaxinren = chengbenGongziFaxinren;
    }

    public Long getChengbenGongziFaxinren() 
    {
        return chengbenGongziFaxinren;
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
            .append("chengbenGongziId", getChengbenGongziId())
            .append("chengbenGongziType", getChengbenGongziType())
            .append("chengbenGongziYuefen", getChengbenGongziYuefen())
            .append("chengbenGongziYingfa", getChengbenGongziYingfa())
            .append("chengbenGongziGerenshebao", getChengbenGongziGerenshebao())
            .append("chengbenGongziGeshui", getChengbenGongziGeshui())
            .append("chengbenGongziBufabujiao", getChengbenGongziBufabujiao())
            .append("chengbenGongziShifa", getChengbenGongziShifa())
            .append("chengbenGongziGongsishebao", getChengbenGongziGongsishebao())
            .append("chengbenGongziYonggongchengben", getChengbenGongziYonggongchengben())
            .append("chengbenGongziNote", getChengbenGongziNote())
            .append("chengbenGongziFaxinren", getChengbenGongziFaxinren())
            .append("createuser", getCreateuser())
            .append("createtime", getCreatetime())
            .append("modifyuser", getModifyuser())
            .append("modifytime", getModifytime())
            .append("isDel", getIsDel())
            .toString();
    }
}
