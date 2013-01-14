<%@page import="com.company.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="orderId" name="orderId" value="${saleOrder.orderId}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=SaleOrder.ALIAS_ORDER_NO%>:
		</td>		
		<td>
		<form:input path="orderNo" id="orderNo" cssClass="required " maxlength="16" />
		<font color='red'><form:errors path="orderNo"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_STAFF_ID%>:
		</td>		
		<td>
		<form:input path="staffId" id="staffId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="staffId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_CUST_ID%>:
		</td>		
		<td>
		<form:input path="custId" id="custId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="custId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_ORDER_DATE%>:
		</td>		
		<td>
		<input value="${saleOrder.orderDateString}" onclick="WdatePicker({dateFmt:'<%=SaleOrder.FORMAT_ORDER_DATE%>'})" id="orderDateString" name="orderDateString"  maxlength="0" class="" />
		<font color='red'><form:errors path="orderDate"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_PAYMENT_MODE%>:
		</td>		
		<td>
		<form:input path="paymentMode" id="paymentMode" cssClass="" maxlength="8" />
		<font color='red'><form:errors path="paymentMode"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_INVOICE_NO%>:
		</td>		
		<td>
		<form:input path="invoiceNo" id="invoiceNo" cssClass="" maxlength="128" />
		<font color='red'><form:errors path="invoiceNo"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_DESCRIPTION%>:
		</td>		
		<td>
		<form:input path="description" id="description" cssClass="" maxlength="512" />
		<font color='red'><form:errors path="description"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_ACCOUNTING_DEPT_ID%>:
		</td>		
		<td>
		<form:input path="accountingDeptId" id="accountingDeptId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="accountingDeptId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_CURRENCY%>:
		</td>		
		<td>
		<form:input path="currency" id="currency" cssClass="" maxlength="8" />
		<font color='red'><form:errors path="currency"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_DELIVERY_METHOD%>:
		</td>		
		<td>
		<form:input path="deliveryMethod" id="deliveryMethod" cssClass="" maxlength="8" />
		<font color='red'><form:errors path="deliveryMethod"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_DELIVERY_DATE%>:
		</td>		
		<td>
		<input value="${saleOrder.deliveryDateString}" onclick="WdatePicker({dateFmt:'<%=SaleOrder.FORMAT_DELIVERY_DATE%>'})" id="deliveryDateString" name="deliveryDateString"  maxlength="0" class="" />
		<font color='red'><form:errors path="deliveryDate"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_ADDITIONAL_TEXT%>:
		</td>		
		<td>
		<form:input path="additionalText" id="additionalText" cssClass="" maxlength="65535" />
		<font color='red'><form:errors path="additionalText"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_IS_AVAILABLE%>:
		</td>		
		<td>
		<form:input path="isAvailable" id="isAvailable" cssClass="" maxlength="1" />
		<font color='red'><form:errors path="isAvailable"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_UPDATOR%>:
		</td>		
		<td>
		<form:input path="updator" id="updator" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="updator"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_UTIME%>:
		</td>		
		<td>
		<input value="${saleOrder.utimeString}" onclick="WdatePicker({dateFmt:'<%=SaleOrder.FORMAT_UTIME%>'})" id="utimeString" name="utimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="utime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_CTIME%>:
		</td>		
		<td>
		<input value="${saleOrder.ctimeString}" onclick="WdatePicker({dateFmt:'<%=SaleOrder.FORMAT_CTIME%>'})" id="ctimeString" name="ctimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="ctime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_CREATOR%>:
		</td>		
		<td>
		<form:input path="creator" id="creator" cssClass="" maxlength="64" />
		<font color='red'><form:errors path="creator"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=SaleOrder.ALIAS_CREATOR_ID%>:
		</td>		
		<td>
		<form:input path="creatorId" id="creatorId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="creatorId"/></font>
		</td>
	</tr>	
	
		