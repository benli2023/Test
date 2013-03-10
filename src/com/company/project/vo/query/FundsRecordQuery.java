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


public class FundsRecordQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** fundsId */
	private java.lang.Long fundsId;
	/** 审核人 */
	private java.lang.Long approvalId;
	/** 收/付款人 */
	private java.lang.Long staffId;
	/** 款项对应的订单ID */
	private java.lang.Long orderId;
	/** 对应的客户ID */
	private java.lang.Long custId;
	/** 款类型 */
	private java.lang.Integer fundsType;
	/** 金额 */
	private Long amount;
	/** 已收/付金额 */
	private Long paidAmount;
	/** 审核状态 */
	private java.lang.Integer approvalStatus;
	/** 审核日期 */
	private java.util.Date approvalDateBegin;
	private java.util.Date approvalDateEnd;
	/** 收付款状态 */
	private java.lang.Integer status;
	/** 备注 */
	private java.lang.String remark;

	public java.lang.Long getFundsId() {
		return this.fundsId;
	}
	
	public void setFundsId(java.lang.Long value) {
		this.fundsId = value;
	}
	
	public java.lang.Long getApprovalId() {
		return this.approvalId;
	}
	
	public void setApprovalId(java.lang.Long value) {
		this.approvalId = value;
	}
	
	public java.lang.Long getStaffId() {
		return this.staffId;
	}
	
	public void setStaffId(java.lang.Long value) {
		this.staffId = value;
	}
	
	public java.lang.Long getOrderId() {
		return this.orderId;
	}
	
	public void setOrderId(java.lang.Long value) {
		this.orderId = value;
	}
	
	public java.lang.Long getCustId() {
		return this.custId;
	}
	
	public void setCustId(java.lang.Long value) {
		this.custId = value;
	}
	
	public java.lang.Integer getFundsType() {
		return this.fundsType;
	}
	
	public void setFundsType(java.lang.Integer value) {
		this.fundsType = value;
	}
	
	public Long getAmount() {
		return this.amount;
	}
	
	public void setAmount(Long value) {
		this.amount = value;
	}
	
	public Long getPaidAmount() {
		return this.paidAmount;
	}
	
	public void setPaidAmount(Long value) {
		this.paidAmount = value;
	}
	
	public java.lang.Integer getApprovalStatus() {
		return this.approvalStatus;
	}
	
	public void setApprovalStatus(java.lang.Integer value) {
		this.approvalStatus = value;
	}
	
	public java.util.Date getApprovalDateBegin() {
		return this.approvalDateBegin;
	}
	
	public void setApprovalDateBegin(java.util.Date value) {
		this.approvalDateBegin = value;
	}	
	
	public java.util.Date getApprovalDateEnd() {
		return this.approvalDateEnd;
	}
	
	public void setApprovalDateEnd(java.util.Date value) {
		this.approvalDateEnd = value;
	}
	
	public java.lang.Integer getStatus() {
		return this.status;
	}
	
	public void setStatus(java.lang.Integer value) {
		this.status = value;
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

