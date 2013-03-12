<%@page import="com.company.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="productId" name="productId" value="${product.productId}"/>

	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_CAT_ID%>:
		</td>		
		<td>
		<yun:button-edit name="catIdTxt" hiddenName="catId" id="product_catId" txtVal="${product.catIdTxt}"  hiddenVal="${product.catId}" width="130"  profileId="product"/> 
	
		<font color='red'><form:errors path="catId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_PEOPLE_ID%>:
		</td>		
		<td>
		<yun:button-edit name="peopleIdTxt" hiddenName="peopleId" id="product_peopleId" txtVal="${product.peopleIdTxt}"  hiddenVal="${product.peopleId}" width="130"  profileId="product"/> 
	
		<font color='red'><form:errors path="peopleId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_PRODUCT_NAME%>:
		</td>		
		<td>
		<form:input path="productName" id="productName" cssClass="" maxlength="64" />
		<font color='red'><form:errors path="productName"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_PRODUCT_CODE%>:
		</td>		
		<td>
		<form:input path="productCode" id="productCode" cssClass="" maxlength="64" />
		<font color='red'><form:errors path="productCode"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_CEIL_LIMIT%>:
		</td>		
		<td>
		<form:input path="ceilLimit" id="ceilLimit" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="ceilLimit"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_LOW_LIMIT%>:
		</td>		
		<td>
		<form:input path="lowLimit" id="lowLimit" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="lowLimit"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_PINY_CODE%>:
		</td>		
		<td>
		<form:input path="pinyCode" id="pinyCode" cssClass="" maxlength="64" />
		<font color='red'><form:errors path="pinyCode"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_PRODUCT_SPEC%>:
		</td>		
		<td>
		<form:input path="productSpec" id="productSpec" cssClass="" maxlength="64" />
		<font color='red'><form:errors path="productSpec"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_SALE_PRICE%>:
		</td>		
		<td>
		<form:input path="salePrice" id="salePrice" cssClass="validate-number " maxlength="10" />
		<font color='red'><form:errors path="salePrice"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_PURCHASE_PRICE%>:
		</td>		
		<td>
		<form:input path="purchasePrice" id="purchasePrice" cssClass="validate-number " maxlength="10" />
		<font color='red'><form:errors path="purchasePrice"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_IS_AVAILABLE%>:
		</td>		
		<td>
		<form:select path="isAvailable" id="isAvailable">
			<form:option value="1" >是</form:option>
			<form:option value="0" >否</form:option>
		</form:select>
		<font color='red'><form:errors path="isAvailable"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_IS_SELLABLE%>:
		</td>		
		<td>
		<form:select path="isSellable" id="isSellable">
			<form:option value="1" >是</form:option>
			<form:option value="0" >否</form:option>
		</form:select>
		<font color='red'><form:errors path="isSellable"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_IS_NEGATIVE%>:
		</td>		
		<td>
		<form:select path="isNegative" id="isNegative">
			<form:option value="1" >是</form:option>
			<form:option value="0" >否</form:option>
		</form:select>
		<font color='red'><form:errors path="isNegative"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_IS_PURCHASABLE%>:
		</td>		
		<td>
		<form:select path="isPurchasable" id="isPurchasable">
			<form:option value="1" >是</form:option>
			<form:option value="0" >否</form:option>
		</form:select>
		<font color='red'><form:errors path="isPurchasable"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_PRODUCT_IMAGE%>:
		</td>		
		<td>
		<form:input path="productImage" id="productImage" cssClass="" maxlength="256" />
		<font color='red'><form:errors path="productImage"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_MANUFACTURER%>:
		</td>		
		<td>
		<form:input path="manufacturer" id="manufacturer" cssClass="" maxlength="256" />
		<font color='red'><form:errors path="manufacturer"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_ORGINAL_PLACE%>:
		</td>		
		<td>
		<form:input path="orginalPlace" id="orginalPlace" cssClass="" maxlength="256" />
		<font color='red'><form:errors path="orginalPlace"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Product.ALIAS_CTIME%>:
		</td>		
		<td>
		<input value="${product.ctimeString}" onclick="WdatePicker({dateFmt:'<%=Product.FORMAT_CTIME%>'})" id="ctimeString" name="ctimeString"  maxlength="0" class="" />
	
		<font color='red'><form:errors path="ctime"/></font>
		</td>
	</tr>	
	
		