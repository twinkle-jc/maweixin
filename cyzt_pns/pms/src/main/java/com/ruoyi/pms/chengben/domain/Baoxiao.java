package com.ruoyi.pms.chengben.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 报销管理对象 pms_chengben_baoxiao
 * 
 * @author lengjun
 * @date 2021-03-19
 */
public class Baoxiao extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 报销表主键 */
    private String chengbenBaoxiaoId;

    /** 类别 */
    @Excel(name = "类别")
    private String chengbenBaoxiaoType;

    /** 明细 */
    @Excel(name = "明细")
    private String chengbenBaoxiaoMingxi;

    /** 金额 */
    @Excel(name = "金额")
    private Double chengbenBaoxiaoJine;

    /** 开票日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "开票日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date chengbenBaoxiaoKaipiaoriqi;

    /** 是否专票 */
    @Excel(name = "是否专票")
    private Integer chengbenBaoxiaoIszhuanpiao;

    /** 发票号码 */
    @Excel(name = "发票号码")
    private String chengbenBaoxiaoFapiaohaoma;

    /** 销方名称 */
    @Excel(name = "销方名称")
    private String chengbenBaoxiaoXiaofangmingcheng;

    /** 抵扣税 */
    @Excel(name = "抵扣税")
    private Long chengbenBaoxiaoDikoushui;

    /** 是否已报销 */
    @Excel(name = "是否已报销")
    private Integer chengbenBaoxiaoIsyibaoxiao;

    /** 备注 */
    @Excel(name = "备注")
    private String chengbenBaoxiaoBeizhu;

    /** 报销人员 */
    @Excel(name = "报销人员")
    private Long chengbenBaoxiaoBaoxiaoren;

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

    public void setChengbenBaoxiaoId(String chengbenBaoxiaoId) 
    {
        this.chengbenBaoxiaoId = chengbenBaoxiaoId;
    }

    public String getChengbenBaoxiaoId() 
    {
        return chengbenBaoxiaoId;
    }
    public void setChengbenBaoxiaoType(String chengbenBaoxiaoType) 
    {
        this.chengbenBaoxiaoType = chengbenBaoxiaoType;
    }

    public String getChengbenBaoxiaoType() 
    {
        return chengbenBaoxiaoType;
    }
    public void setChengbenBaoxiaoMingxi(String chengbenBaoxiaoMingxi) 
    {
        this.chengbenBaoxiaoMingxi = chengbenBaoxiaoMingxi;
    }

    public String getChengbenBaoxiaoMingxi() 
    {
        return chengbenBaoxiaoMingxi;
    }
    public void setChengbenBaoxiaoJine(Double chengbenBaoxiaoJine) 
    {
        this.chengbenBaoxiaoJine = chengbenBaoxiaoJine;
    }

    public Double getChengbenBaoxiaoJine() 
    {
        return chengbenBaoxiaoJine;
    }
    public void setChengbenBaoxiaoKaipiaoriqi(Date chengbenBaoxiaoKaipiaoriqi) 
    {
        this.chengbenBaoxiaoKaipiaoriqi = chengbenBaoxiaoKaipiaoriqi;
    }

    public Date getChengbenBaoxiaoKaipiaoriqi() 
    {
        return chengbenBaoxiaoKaipiaoriqi;
    }
    public void setChengbenBaoxiaoIszhuanpiao(Integer chengbenBaoxiaoIszhuanpiao) 
    {
        this.chengbenBaoxiaoIszhuanpiao = chengbenBaoxiaoIszhuanpiao;
    }

    public Integer getChengbenBaoxiaoIszhuanpiao() 
    {
        return chengbenBaoxiaoIszhuanpiao;
    }
    public void setChengbenBaoxiaoFapiaohaoma(String chengbenBaoxiaoFapiaohaoma) 
    {
        this.chengbenBaoxiaoFapiaohaoma = chengbenBaoxiaoFapiaohaoma;
    }

    public String getChengbenBaoxiaoFapiaohaoma() 
    {
        return chengbenBaoxiaoFapiaohaoma;
    }
    public void setChengbenBaoxiaoXiaofangmingcheng(String chengbenBaoxiaoXiaofangmingcheng) 
    {
        this.chengbenBaoxiaoXiaofangmingcheng = chengbenBaoxiaoXiaofangmingcheng;
    }

    public String getChengbenBaoxiaoXiaofangmingcheng() 
    {
        return chengbenBaoxiaoXiaofangmingcheng;
    }
    public void setChengbenBaoxiaoDikoushui(Long chengbenBaoxiaoDikoushui) 
    {
        this.chengbenBaoxiaoDikoushui = chengbenBaoxiaoDikoushui;
    }

    public Long getChengbenBaoxiaoDikoushui() 
    {
        return chengbenBaoxiaoDikoushui;
    }
    public void setChengbenBaoxiaoIsyibaoxiao(Integer chengbenBaoxiaoIsyibaoxiao) 
    {
        this.chengbenBaoxiaoIsyibaoxiao = chengbenBaoxiaoIsyibaoxiao;
    }

    public Integer getChengbenBaoxiaoIsyibaoxiao() 
    {
        return chengbenBaoxiaoIsyibaoxiao;
    }
    public void setChengbenBaoxiaoBeizhu(String chengbenBaoxiaoBeizhu) 
    {
        this.chengbenBaoxiaoBeizhu = chengbenBaoxiaoBeizhu;
    }

    public String getChengbenBaoxiaoBeizhu() 
    {
        return chengbenBaoxiaoBeizhu;
    }
    public void setChengbenBaoxiaoBaoxiaoren(Long chengbenBaoxiaoBaoxiaoren) 
    {
        this.chengbenBaoxiaoBaoxiaoren = chengbenBaoxiaoBaoxiaoren;
    }

    public Long getChengbenBaoxiaoBaoxiaoren() 
    {
        return chengbenBaoxiaoBaoxiaoren;
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
            .append("chengbenBaoxiaoId", getChengbenBaoxiaoId())
            .append("chengbenBaoxiaoType", getChengbenBaoxiaoType())
            .append("chengbenBaoxiaoMingxi", getChengbenBaoxiaoMingxi())
            .append("chengbenBaoxiaoJine", getChengbenBaoxiaoJine())
            .append("chengbenBaoxiaoKaipiaoriqi", getChengbenBaoxiaoKaipiaoriqi())
            .append("chengbenBaoxiaoIszhuanpiao", getChengbenBaoxiaoIszhuanpiao())
            .append("chengbenBaoxiaoFapiaohaoma", getChengbenBaoxiaoFapiaohaoma())
            .append("chengbenBaoxiaoXiaofangmingcheng", getChengbenBaoxiaoXiaofangmingcheng())
            .append("chengbenBaoxiaoDikoushui", getChengbenBaoxiaoDikoushui())
            .append("chengbenBaoxiaoIsyibaoxiao", getChengbenBaoxiaoIsyibaoxiao())
            .append("chengbenBaoxiaoBeizhu", getChengbenBaoxiaoBeizhu())
            .append("chengbenBaoxiaoBaoxiaoren", getChengbenBaoxiaoBaoxiaoren())
            .append("createuser", getCreateuser())
            .append("createtime", getCreatetime())
            .append("modifyuser", getModifyuser())
            .append("modifytime", getModifytime())
            .append("isDel", getIsDel())
            .toString();
    }
}
