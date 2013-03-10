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


import cn.org.rapid_framework.util.*;
import cn.org.rapid_framework.web.util.*;
import cn.org.rapid_framework.page.*;
import cn.org.rapid_framework.page.impl.*;

import com.company.project.model.*;
import com.company.project.dao.*;
import com.company.project.service.*;
import com.company.project.vo.query.*;
import com.github.springrest.base.*;
import com.github.springrest.util.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


public class StockRecordQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** stockOperationId */
	private java.lang.Long stockOperationId;
	/** 部门ID */
	private java.lang.Integer deptId;
	/** 员工ID */
	private java.lang.Long staffId;
	/** 操作类型 */
	private java.lang.Integer operType;
	/** 提供商ID */
	private java.lang.Long custId;
	/** 日期 */
	private java.util.Date operDateBegin;
	private java.util.Date operDateEnd;
	/** 审核状态 */
	private java.lang.Integer approvalStatus;
	/** 审核人ID */
	private java.lang.Long approvalId;
	/** 仓库ID */
	private java.lang.Long stockId;
	/** 目标仓库ID */
	private java.lang.Long toStockId;
	/** 备注 */
	private java.lang.String remark;

	public java.lang.Long getStockOperationId() {
		return this.stockOperationId;
	}
	
	public void setStockOperationId(java.lang.Long value) {
		this.stockOperationId = value;
	}
	
	public java.lang.Integer getDeptId() {
		return this.deptId;
	}
	
	public void setDeptId(java.lang.Integer value) {
		this.deptId = value;
	}
	
	public java.lang.Long getStaffId() {
		return this.staffId;
	}
	
	public void setStaffId(java.lang.Long value) {
		this.staffId = value;
	}
	
	public java.lang.Integer getOperType() {
		return this.operType;
	}
	
	public void setOperType(java.lang.Integer value) {
		this.operType = value;
	}
	
	public java.lang.Long getCustId() {
		return this.custId;
	}
	
	public void setCustId(java.lang.Long value) {
		this.custId = value;
	}
	
	public java.util.Date getOperDateBegin() {
		return this.operDateBegin;
	}
	
	public void setOperDateBegin(java.util.Date value) {
		this.operDateBegin = value;
	}	
	
	public java.util.Date getOperDateEnd() {
		return this.operDateEnd;
	}
	
	public void setOperDateEnd(java.util.Date value) {
		this.operDateEnd = value;
	}
	
	public java.lang.Integer getApprovalStatus() {
		return this.approvalStatus;
	}
	
	public void setApprovalStatus(java.lang.Integer value) {
		this.approvalStatus = value;
	}
	
	public java.lang.Long getApprovalId() {
		return this.approvalId;
	}
	
	public void setApprovalId(java.lang.Long value) {
		this.approvalId = value;
	}
	
	public java.lang.Long getStockId() {
		return this.stockId;
	}
	
	public void setStockId(java.lang.Long value) {
		this.stockId = value;
	}
	
	public java.lang.Long getToStockId() {
		return this.toStockId;
	}
	
	public void setToStockId(java.lang.Long value) {
		this.toStockId = value;
	}
	
	public java.lang.String getRemark() {
		return this.remark;
	}
	
	public void setRemark(java.lang.String value) {
		this.remark = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

