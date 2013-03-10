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


public class StockRecordLineQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** stockOperDetailId */
	private java.lang.Long stockOperDetailId;
	/** 仓库操作ID */
	private java.lang.Long stockOperationId;
	/** 产品ID */
	private java.lang.Long productId;
	/** 价格 */
	private Long price;
	/** 出库数量 */
	private java.lang.Integer quantity;
	/** 是否有发票 */
	private java.lang.Boolean haveInvoice;
	/** 发票号码 */
	private java.lang.String invoiceNumber;

	public java.lang.Long getStockOperDetailId() {
		return this.stockOperDetailId;
	}
	
	public void setStockOperDetailId(java.lang.Long value) {
		this.stockOperDetailId = value;
	}
	
	public java.lang.Long getStockOperationId() {
		return this.stockOperationId;
	}
	
	public void setStockOperationId(java.lang.Long value) {
		this.stockOperationId = value;
	}
	
	public java.lang.Long getProductId() {
		return this.productId;
	}
	
	public void setProductId(java.lang.Long value) {
		this.productId = value;
	}
	
	public Long getPrice() {
		return this.price;
	}
	
	public void setPrice(Long value) {
		this.price = value;
	}
	
	public java.lang.Integer getQuantity() {
		return this.quantity;
	}
	
	public void setQuantity(java.lang.Integer value) {
		this.quantity = value;
	}
	
	public java.lang.Boolean getHaveInvoice() {
		return this.haveInvoice;
	}
	
	public void setHaveInvoice(java.lang.Boolean value) {
		this.haveInvoice = value;
	}
	
	public java.lang.String getInvoiceNumber() {
		return this.invoiceNumber;
	}
	
	public void setInvoiceNumber(java.lang.String value) {
		this.invoiceNumber = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

