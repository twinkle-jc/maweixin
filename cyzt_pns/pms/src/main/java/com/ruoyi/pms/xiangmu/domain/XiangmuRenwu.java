package com.ruoyi.pms.xiangmu.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 项目任务信息管理对象 pms_xiangmu_renwu
 * 
 * @author lengjun
 * @date 2021-04-04
 */
public class XiangmuRenwu extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 任务表主键 */
    private String xiangmuRenwuId;

    /** 标题 */
    @Excel(name = "标题")
    private String xiangmuRenwuBiaoti;

    /** 项目表主键 */
    @Excel(name = "项目表主键")
    private String xiangmuId;

    /** 项目任务分组主键 */
    @Excel(name = "项目任务分组主键")
    private String xiangmuRenwuFenzuId;

    /** 类型 */
    @Excel(name = "类型")
    private String xiangmuRenwuType;

    /** 负责人 */
    @Excel(name = "负责人")
    private Long xiangmuRenwuFuzeren;

    /** 优先级 */
    @Excel(name = "优先级")
    private String xiangmuRenwuYouxianji;

    /** 状态 */
    @Excel(name = "状态")
    private String xiangmuRenwuZhuangtai;

    /** 开始时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date xiangmuRenwuKaishishijian;

    /** 截至日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "截至日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date xiangmuRenwuJiezhiriqi;

    /** 进度 */
    @Excel(name = "进度")
    private Double xiangmuRenwuJindu;

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

    public void setXiangmuRenwuId(String xiangmuRenwuId) 
    {
        this.xiangmuRenwuId = xiangmuRenwuId;
    }

    public String getXiangmuRenwuId() 
    {
        return xiangmuRenwuId;
    }
    public void setXiangmuRenwuBiaoti(String xiangmuRenwuBiaoti) 
    {
        this.xiangmuRenwuBiaoti = xiangmuRenwuBiaoti;
    }

    public String getXiangmuRenwuBiaoti() 
    {
        return xiangmuRenwuBiaoti;
    }
    public void setXiangmuId(String xiangmuId) 
    {
        this.xiangmuId = xiangmuId;
    }

    public String getXiangmuId() 
    {
        return xiangmuId;
    }
    public void setXiangmuRenwuFenzuId(String xiangmuRenwuFenzuId) 
    {
        this.xiangmuRenwuFenzuId = xiangmuRenwuFenzuId;
    }

    public String getXiangmuRenwuFenzuId() 
    {
        return xiangmuRenwuFenzuId;
    }
    public void setXiangmuRenwuType(String xiangmuRenwuType) 
    {
        this.xiangmuRenwuType = xiangmuRenwuType;
    }

    public String getXiangmuRenwuType() 
    {
        return xiangmuRenwuType;
    }
    public void setXiangmuRenwuFuzeren(Long xiangmuRenwuFuzeren) 
    {
        this.xiangmuRenwuFuzeren = xiangmuRenwuFuzeren;
    }

    public Long getXiangmuRenwuFuzeren() 
    {
        return xiangmuRenwuFuzeren;
    }
    public void setXiangmuRenwuYouxianji(String xiangmuRenwuYouxianji) 
    {
        this.xiangmuRenwuYouxianji = xiangmuRenwuYouxianji;
    }

    public String getXiangmuRenwuYouxianji() 
    {
        return xiangmuRenwuYouxianji;
    }
    public void setXiangmuRenwuZhuangtai(String xiangmuRenwuZhuangtai) 
    {
        this.xiangmuRenwuZhuangtai = xiangmuRenwuZhuangtai;
    }

    public String getXiangmuRenwuZhuangtai() 
    {
        return xiangmuRenwuZhuangtai;
    }
    public void setXiangmuRenwuKaishishijian(Date xiangmuRenwuKaishishijian) 
    {
        this.xiangmuRenwuKaishishijian = xiangmuRenwuKaishishijian;
    }

    public Date getXiangmuRenwuKaishishijian() 
    {
        return xiangmuRenwuKaishishijian;
    }
    public void setXiangmuRenwuJiezhiriqi(Date xiangmuRenwuJiezhiriqi) 
    {
        this.xiangmuRenwuJiezhiriqi = xiangmuRenwuJiezhiriqi;
    }

    public Date getXiangmuRenwuJiezhiriqi() 
    {
        return xiangmuRenwuJiezhiriqi;
    }
    public void setXiangmuRenwuJindu(Double xiangmuRenwuJindu) 
    {
        this.xiangmuRenwuJindu = xiangmuRenwuJindu;
    }

    public Double getXiangmuRenwuJindu() 
    {
        return xiangmuRenwuJindu;
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
            .append("xiangmuRenwuId", getXiangmuRenwuId())
            .append("xiangmuRenwuBiaoti", getXiangmuRenwuBiaoti())
            .append("xiangmuId", getXiangmuId())
            .append("xiangmuRenwuFenzuId", getXiangmuRenwuFenzuId())
            .append("xiangmuRenwuType", getXiangmuRenwuType())
            .append("xiangmuRenwuFuzeren", getXiangmuRenwuFuzeren())
            .append("xiangmuRenwuYouxianji", getXiangmuRenwuYouxianji())
            .append("xiangmuRenwuZhuangtai", getXiangmuRenwuZhuangtai())
            .append("xiangmuRenwuKaishishijian", getXiangmuRenwuKaishishijian())
            .append("xiangmuRenwuJiezhiriqi", getXiangmuRenwuJiezhiriqi())
            .append("xiangmuRenwuJindu", getXiangmuRenwuJindu())
            .append("createuser", getCreateuser())
            .append("createtime", getCreatetime())
            .append("modifyuser", getModifyuser())
            .append("modifytime", getModifytime())
            .append("isDel", getIsDel())
            .toString();
    }
}
