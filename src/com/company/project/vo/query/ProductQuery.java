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


public class ProductQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** 产品图片 */
	private java.lang.String productImage;
	/** 生产商 */
	private java.lang.String manufacturer;
	/** catId */
	private java.lang.Long catId;
	private String catIdTxt;
	/** 拼音编码 */
	private java.lang.String pinyCode;
	/** 预设售价 */
	private Long salePrice;
	/** 产地 */
	private java.lang.String orginalPlace;
	/** 商品编码 */
	private java.lang.String productCode;
	/** 是否允许采购 */
	private java.lang.Boolean isPurchasable;
	/** 是否有效 */
	private java.lang.Boolean isAvailable;
	/** 商品名称 */
	private java.lang.String productName;
	/** 是否可卖 */
	private java.lang.Boolean isSellable;
	/** 创建时间 */
	private java.util.Date ctimeBegin;
	private java.util.Date ctimeEnd;
	/** 规格型号 */
	private java.lang.String productSpec;
	/** 预设进价 */
	private Long purchasePrice;
	/** 是否允许负库存 */
	private java.lang.Boolean isNegative;
	/** 库存上限 */
	private java.lang.Integer ceilLimit;
	/** productId */
	private java.lang.Long productId;
	/** 库存下限 */
	private java.lang.Integer lowLimit;

	public java.lang.String getProductImage() {
		return this.productImage;
	}
	
	public void setProductImage(java.lang.String value) {
		this.productImage = value;
	}
	
	public java.lang.String getManufacturer() {
		return this.manufacturer;
	}
	
	public void setManufacturer(java.lang.String value) {
		this.manufacturer = value;
	}
	
	
	public java.lang.Long getCatId() {
		return this.catId;
	}
	
	public void setCatId(java.lang.Long value) {
		this.catId = value;
	}
	
	public String getCatIdTxt() {
		return this.catIdTxt;
	}
	
	public void setCatIdTxt(String value) {
		this.catIdTxt = value;
	}
	
	public java.lang.String getPinyCode() {
		return this.pinyCode;
	}
	
	public void setPinyCode(java.lang.String value) {
		this.pinyCode = value;
	}
	
	public Long getSalePrice() {
		return this.salePrice;
	}
	
	public void setSalePrice(Long value) {
		this.salePrice = value;
	}
	
	public java.lang.String getOrginalPlace() {
		return this.orginalPlace;
	}
	
	public void setOrginalPlace(java.lang.String value) {
		this.orginalPlace = value;
	}
	
	public java.lang.String getProductCode() {
		return this.productCode;
	}
	
	public void setProductCode(java.lang.String value) {
		this.productCode = value;
	}
	
	public java.lang.Boolean getIsPurchasable() {
		return this.isPurchasable;
	}
	
	public void setIsPurchasable(java.lang.Boolean value) {
		this.isPurchasable = value;
	}
	
	public java.lang.Boolean getIsAvailable() {
		return this.isAvailable;
	}
	
	public void setIsAvailable(java.lang.Boolean value) {
		this.isAvailable = value;
	}
	
	public java.lang.String getProductName() {
		return this.productName;
	}
	
	public void setProductName(java.lang.String value) {
		this.productName = value;
	}
	
	public java.lang.Boolean getIsSellable() {
		return this.isSellable;
	}
	
	public void setIsSellable(java.lang.Boolean value) {
		this.isSellable = value;
	}
	
	public java.util.Date getCtimeBegin() {
		return this.ctimeBegin;
	}
	
	public void setCtimeBegin(java.util.Date value) {
		this.ctimeBegin = value;
	}	
	
	public java.util.Date getCtimeEnd() {
		return this.ctimeEnd;
	}
	
	public void setCtimeEnd(java.util.Date value) {
		this.ctimeEnd = value;
	}
	
	public java.lang.String getProductSpec() {
		return this.productSpec;
	}
	
	public void setProductSpec(java.lang.String value) {
		this.productSpec = value;
	}
	
	public Long getPurchasePrice() {
		return this.purchasePrice;
	}
	
	public void setPurchasePrice(Long value) {
		this.purchasePrice = value;
	}
	
	public java.lang.Boolean getIsNegative() {
		return this.isNegative;
	}
	
	public void setIsNegative(java.lang.Boolean value) {
		this.isNegative = value;
	}
	
	public java.lang.Integer getCeilLimit() {
		return this.ceilLimit;
	}
	
	public void setCeilLimit(java.lang.Integer value) {
		this.ceilLimit = value;
	}
	
	public java.lang.Long getProductId() {
		return this.productId;
	}
	
	public void setProductId(java.lang.Long value) {
		this.productId = value;
	}
	
	public java.lang.Integer getLowLimit() {
		return this.lowLimit;
	}
	
	public void setLowLimit(java.lang.Integer value) {
		this.lowLimit = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

