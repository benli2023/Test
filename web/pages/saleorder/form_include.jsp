<%@page import="com.yunwei.order.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="orderId" name="orderId" value="${saleOrder.orderId}"/>

	<div class="formRow">
		<label for="orderNo"><%=SaleOrder.ALIAS_ORDER_NO%></label>
		<form:input path="orderNo" id="orderNo" cssClass="input-text " maxlength="16" />
	</div>
	
	<div class="formRow">
		<label for="staffIdTxt"><%=SaleOrder.ALIAS_STAFF_ID%></label>
		<input name="staffIdTxt" id="staffIdTxt" class="input-text small" maxlength="19" />
		<input id="staffId" name="staffId" type="hidden" class="userIDHidden"/>
	</div>
	
	
	<div class="formRow">
		<label for="custIdTxt"><%=SaleOrder.ALIAS_CUST_ID%></label>
		<input path="custIdTxt" id="custIdTxt" class="input-text small" maxlength="19" />
		<input id="custId" name="custId" type="hidden" class="userIDHidden"/>
	</div>
	
	<div class="formRow">
		<label for="orderDateString"><%=SaleOrder.ALIAS_ORDER_DATE%></label>
		<input value="" name="orderDateString" id="orderDateString" class="input-text small" maxlength="16"  />
	</div>
	
	<div class="formRow">
		<label for="paymentMode"><%=SaleOrder.ALIAS_PAYMENT_MODE%></label>
		
		<select id="paymentMode" name="paymentMode">
				<option value=""> --- 请选择 --- </option>
				<option value="1">现金</option>
				<option value="2">支票</option>
				<option value="3">其他</option>
			</select>
	</div>
	
	<div class="formRow">
		<label for="invoiceNo"><%=SaleOrder.ALIAS_INVOICE_NO%></label>
		<form:input path="invoiceNo" id="invoiceNo" cssClass="input-text " maxlength="16" />
		
	</div>
	
	<div class="formRow">
		<label for="description"><%=SaleOrder.ALIAS_DESCRIPTION%></label>
		<textarea rows="1" cols="1" id="description" name="description"></textarea>
	</div>

	<div class="formRow">
		<label for="accountingDeptIdTxt"><%=SaleOrder.ALIAS_ACCOUNTING_DEPT_ID%></label>
		<input path="accountingDeptIdTxt" id="accountingDeptIdTxt" class="input-text " maxlength="19" />
		<input id="accountingDeptId" name="accountingDeptId" type="hidden" class="userIDHidden"/>
	</div>
	
	<div class="formRow">
			<label for="currency"><%=SaleOrder.ALIAS_CURRENCY%></label>
			<select id="currency" name="currency">
				<option value=""> --- Please Select --- </option>
				<option value="1">CNY</option>
				<option value="2">USD</option>
				<option value="3">GBP</option>
			</select>
	</div>
	
	<div class="formRow">
			<label for="deliveryMethod"><%=SaleOrder.ALIAS_DELIVERY_METHOD%></label>
			<select id="deliveryMethod" name="deliveryMethod">
				<option value=""> --- Please Select --- </option>
				<option value="1">CNY</option>
				<option value="2">USD</option>
				<option value="3">GBP</option>
			</select>
	</div>

	<div class="formRow">
			<label for="orderDateString"><%=SaleOrder.ALIAS_DELIVERY_DATE%></label>
			<form:input path="deliveryDateString" id="deliveryDateString" cssClass="input-text small" maxlength="16" />
	</div>
	
	<div class="formRow">
		<label for="additionalText"><%=SaleOrder.ALIAS_ADDITIONAL_TEXT%></label>
		<textarea rows="1" cols="1" id="additionalText" name="additionalText"></textarea>
	</div>
	
	<div class="formRow">
		<p><%=SaleOrder.ALIAS_IS_AVAILABLE%></p>
		<div class="row">
			<div class="three columns">
				<label for="nice_radio1"><input type="radio" id="nice_radio1" name="isAvailable" value="1"> 是</label>
			</div>
			<div class="three columns">
				<label for="nice_radio2"><input type="radio" id="nice_radio2" name="isAvailable"	value="0">否</label>
			</div>
			<div class="six columns">
			</div>

		</div>
	</div>
	



	
		
