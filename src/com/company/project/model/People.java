/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2013
 */

package com.company.project.model;

import javax.validation.constraints.*;
import org.hibernate.validator.constraints.*;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.util.*;

import javacommon.base.*;
import javacommon.util.*;

import cn.org.rapid_framework.util.*;
import cn.org.rapid_framework.web.util.*;
import cn.org.rapid_framework.page.*;
import cn.org.rapid_framework.page.impl.*;

import com.company.project.model.*;
import com.company.project.dao.*;
import com.company.project.service.*;
import com.company.project.vo.query.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


public class People extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "People";
	public static final String ALIAS_PERSON_ID = "personId";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_AGE = "age";
	public static final String ALIAS_RECORD_DATE = "recordDate";
	
	//date formats
	public static final String FORMAT_RECORD_DATE = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
    /**
     * personId       db_column: PersonId 
     */ 	
	
	private java.lang.Long personId;
    /**
     * name       db_column: Name 
     */ 	
	@NotBlank @Length(max=45)
	private java.lang.String name;
    /**
     * age       db_column: Age 
     */ 	
	@NotNull 
	private java.lang.Integer age;
    /**
     * recordDate       db_column: RecordDate 
     */ 	
	private java.util.Date recordDate;
	//columns END

	public People(){
	}

	public People(
		java.lang.Long personId
	){
		this.personId = personId;
	}

	
	public java.lang.Long getPersonId() {
		return personId;
	}

	public void setPersonId(java.lang.Long personId) {
		this.personId = personId;
	}

	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	public void setAge(java.lang.Integer value) {
		this.age = value;
	}
	
	public java.lang.Integer getAge() {
		return this.age;
	}
	public String getRecordDateString() {
		return DateConvertUtils.format(getRecordDate(), FORMAT_RECORD_DATE);
	}
	public void setRecordDateString(String value) {
		setRecordDate(DateConvertUtils.parse(value, FORMAT_RECORD_DATE,java.util.Date.class));
	}
	
	public void setRecordDate(java.util.Date value) {
		this.recordDate = value;
	}
	
	public java.util.Date getRecordDate() {
		return this.recordDate;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("PersonId",getPersonId())
			.append("Name",getName())
			.append("Age",getAge())
			.append("RecordDate",getRecordDate())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getPersonId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof People == false) return false;
		if(this == obj) return true;
		People other = (People)obj;
		return new EqualsBuilder()
			.append(getPersonId(),other.getPersonId())
			.isEquals();
	}
}

