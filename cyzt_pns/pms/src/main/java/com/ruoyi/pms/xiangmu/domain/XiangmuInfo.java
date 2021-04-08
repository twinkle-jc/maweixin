package com.ruoyi.pms.xiangmu.domain;

import java.util.List;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 项目信息管理对象 pms_xiangmu
 * 
 * @author lengjun
 * @date 2021-04-04
 */
public class XiangmuInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 项目表主键 */
    private String xiangmuId;

    /** 项目类型 */
    @Excel(name = "项目类型")
    private String xiangmuType;

    /** 项目编码 */
    @Excel(name = "项目编码")
    private String xiangmuCode;

    /** 项目名称 */
    @Excel(name = "项目名称")
    private String xiangmuName;

    /** 可见范围 */
    @Excel(name = "可见范围")
    private String xiangmuKejianfanwei;

    /** 分组 */
    @Excel(name = "分组")
    private String xiangmuFenzu;

    /** 描述 */
    @Excel(name = "描述")
    private String xiangmuMiaoshu;

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

    /** 项目任务信息管理信息 */
    private List<XiangmuRenwu> xiangmuRenwuList;

    public void setXiangmuId(String xiangmuId) 
    {
        this.xiangmuId = xiangmuId;
    }

    public String getXiangmuId() 
    {
        return xiangmuId;
    }
    public void setXiangmuType(String xiangmuType) 
    {
        this.xiangmuType = xiangmuType;
    }

    public String getXiangmuType() 
    {
        return xiangmuType;
    }
    public void setXiangmuCode(String xiangmuCode) 
    {
        this.xiangmuCode = xiangmuCode;
    }

    public String getXiangmuCode() 
    {
        return xiangmuCode;
    }
    public void setXiangmuName(String xiangmuName) 
    {
        this.xiangmuName = xiangmuName;
    }

    public String getXiangmuName() 
    {
        return xiangmuName;
    }
    public void setXiangmuKejianfanwei(String xiangmuKejianfanwei) 
    {
        this.xiangmuKejianfanwei = xiangmuKejianfanwei;
    }

    public String getXiangmuKejianfanwei() 
    {
        return xiangmuKejianfanwei;
    }
    public void setXiangmuFenzu(String xiangmuFenzu) 
    {
        this.xiangmuFenzu = xiangmuFenzu;
    }

    public String getXiangmuFenzu() 
    {
        return xiangmuFenzu;
    }
    public void setXiangmuMiaoshu(String xiangmuMiaoshu) 
    {
        this.xiangmuMiaoshu = xiangmuMiaoshu;
    }

    public String getXiangmuMiaoshu() 
    {
        return xiangmuMiaoshu;
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

    public List<XiangmuRenwu> getXiangmuRenwuList()
    {
        return xiangmuRenwuList;
    }

    public void setXiangmuRenwuList(List<XiangmuRenwu> xiangmuRenwuList)
    {
        this.xiangmuRenwuList = xiangmuRenwuList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("xiangmuId", getXiangmuId())
            .append("xiangmuType", getXiangmuType())
            .append("xiangmuCode", getXiangmuCode())
            .append("xiangmuName", getXiangmuName())
            .append("xiangmuKejianfanwei", getXiangmuKejianfanwei())
            .append("xiangmuFenzu", getXiangmuFenzu())
            .append("xiangmuMiaoshu", getXiangmuMiaoshu())
            .append("createuser", getCreateuser())
            .append("createtime", getCreatetime())
            .append("modifyuser", getModifyuser())
            .append("modifytime", getModifytime())
            .append("isDel", getIsDel())
            .append("xiangmuRenwuList", getXiangmuRenwuList())
            .toString();
    }
}
