/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2013
 */

package com.company.project.model;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;
import org.codehaus.jackson.annotate.JsonProperty;
import org.hibernate.validator.constraints.Length;

import cn.org.rapid_framework.util.DateConvertUtils;

import com.github.springrest.base.BaseEntity;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


public class Category extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Category";
	public static final String ALIAS_PARENT_ID = "parentId";
	public static final String ALIAS_CATE_ID = "cateId";
	public static final String ALIAS_CTIME = "创建时间";
	public static final String ALIAS_CATE_NAME = "cateName";
	public static final String ALIAS_ADMIN = "创建人";
	public static final String ALIAS_IS_AVAILABLE = "是否有效";
	
	//date formats
	public static final String FORMAT_CTIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
    /**
     * parentId       db_column: parent_id 
     */ 	
	
	
	private java.lang.Long parentId;
	
	
    /**
     * cateId       db_column: cate_id 
     */ 	
	
	
	private java.lang.Long cateId;
	
	
    /**
     * 创建时间       db_column: cTime 
     */ 	
	
	
	private java.util.Date ctime;
	
	
    /**
     * cateName       db_column: cate_name 
     */ 	
	@Length(max=128)
	@JsonProperty("cate_name")
	private java.lang.String cateName;
	
	
    /**
     * 创建人       db_column: admin 
     */ 	
	
	
	private java.lang.Long admin;
	
	
    /**
     * 是否有效       db_column: is_available 
     */ 	
	
	
	private java.lang.Boolean isAvailable;
	
	//columns END

	public Category(){
	}

	public Category(
		java.lang.Long cateId
	){
		this.cateId = cateId;
	}

	public void setParentId(java.lang.Long value) {
		this.parentId = value;
	}
	
	public java.lang.Long getParentId() {
		return this.parentId;
	}
	public void setCateId(java.lang.Long value) {
		this.cateId = value;
	}
	
	public java.lang.Long getCateId() {
		return this.cateId;
	}
	public String getCtimeString() {
		return DateConvertUtils.format(getCtime(), FORMAT_CTIME);
	}
	public void setCtimeString(String value) {
		setCtime(DateConvertUtils.parse(value, FORMAT_CTIME,java.util.Date.class));
	}
	
	public void setCtime(java.util.Date value) {
		this.ctime = value;
	}
	
	public java.util.Date getCtime() {
		return this.ctime;
	}
	public void setCateName(java.lang.String value) {
		this.cateName = value;
	}
	
	public java.lang.String getCateName() {
		return this.cateName;
	}
	public void setAdmin(java.lang.Long value) {
		this.admin = value;
	}
	
	public java.lang.Long getAdmin() {
		return this.admin;
	}
	public void setIsAvailable(java.lang.Boolean value) {
		this.isAvailable = value;
	}
	
	public java.lang.Boolean getIsAvailable() {
		return this.isAvailable;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("ParentId",getParentId())
			.append("CateId",getCateId())
			.append("Ctime",getCtime())
			.append("CateName",getCateName())
			.append("Admin",getAdmin())
			.append("IsAvailable",getIsAvailable())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getCateId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Category == false) return false;
		if(this == obj) return true;
		Category other = (Category)obj;
		return new EqualsBuilder()
			.append(getCateId(),other.getCateId())
			.isEquals();
	}
}

