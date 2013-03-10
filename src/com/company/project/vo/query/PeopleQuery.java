/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2013
 */

package com.company.project.vo.query;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;

import java.util.*;

import com.github.springrest.base.*;
import com.github.springrest.util.*;
import org.codehaus.jackson.annotate.*;
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


public class PeopleQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** personId */
	private java.lang.Integer personId;
	/** name */
	private java.lang.String name;
	/** age */
	private java.lang.Integer age;
	/** recordDate */
	private java.util.Date recordDateBegin;
	private java.util.Date recordDateEnd;

	public java.lang.Integer getPersonId() {
		return this.personId;
	}
	
	public void setPersonId(java.lang.Integer value) {
		this.personId = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.Integer getAge() {
		return this.age;
	}
	
	public void setAge(java.lang.Integer value) {
		this.age = value;
	}
	
	public java.util.Date getRecordDateBegin() {
		return this.recordDateBegin;
	}
	
	public void setRecordDateBegin(java.util.Date value) {
		this.recordDateBegin = value;
	}	
	
	public java.util.Date getRecordDateEnd() {
		return this.recordDateEnd;
	}
	
	public void setRecordDateEnd(java.util.Date value) {
		this.recordDateEnd = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

