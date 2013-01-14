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


public class StockProductQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** stockProductId */
	private java.lang.Long stockProductId;
	/** 仓库ID */
	private java.lang.Long stockId;
	/** 产品ID */
	private java.lang.Long productId;
	/** 数量 */
	private java.lang.Integer quantity;
	/** 首次入库时间 */
	private java.util.Date firstEnterDateBegin;
	private java.util.Date firstEnterDateEnd;
	/** 最新出库时间 */
	private java.util.Date outerDateBegin;
	private java.util.Date outerDateEnd;
	/** 价格 */
	private Long price;

	public java.lang.Long getStockProductId() {
		return this.stockProductId;
	}
	
	public void setStockProductId(java.lang.Long value) {
		this.stockProductId = value;
	}
	
	public java.lang.Long getStockId() {
		return this.stockId;
	}
	
	public void setStockId(java.lang.Long value) {
		this.stockId = value;
	}
	
	public java.lang.Long getProductId() {
		return this.productId;
	}
	
	public void setProductId(java.lang.Long value) {
		this.productId = value;
	}
	
	public java.lang.Integer getQuantity() {
		return this.quantity;
	}
	
	public void setQuantity(java.lang.Integer value) {
		this.quantity = value;
	}
	
	public java.util.Date getFirstEnterDateBegin() {
		return this.firstEnterDateBegin;
	}
	
	public void setFirstEnterDateBegin(java.util.Date value) {
		this.firstEnterDateBegin = value;
	}	
	
	public java.util.Date getFirstEnterDateEnd() {
		return this.firstEnterDateEnd;
	}
	
	public void setFirstEnterDateEnd(java.util.Date value) {
		this.firstEnterDateEnd = value;
	}
	
	public java.util.Date getOuterDateBegin() {
		return this.outerDateBegin;
	}
	
	public void setOuterDateBegin(java.util.Date value) {
		this.outerDateBegin = value;
	}	
	
	public java.util.Date getOuterDateEnd() {
		return this.outerDateEnd;
	}
	
	public void setOuterDateEnd(java.util.Date value) {
		this.outerDateEnd = value;
	}
	
	public Long getPrice() {
		return this.price;
	}
	
	public void setPrice(Long value) {
		this.price = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

