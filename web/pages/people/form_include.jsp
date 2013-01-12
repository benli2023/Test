<%@page import="com.company.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="personId" name="personId" value="${people.personId}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=People.ALIAS_NAME%>:
		</td>		
		<td>
		<form:input path="name" id="name" cssClass="required " maxlength="45" />
		<font color='red'><form:errors path="name"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=People.ALIAS_AGE%>:
		</td>		
		<td>
		<form:input path="age" id="age" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="age"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=People.ALIAS_RECORD_DATE%>:
		</td>		
		<td>
		<input value="${people.recordDateString}" onclick="WdatePicker({dateFmt:'<%=People.FORMAT_RECORD_DATE%>'})" id="recordDateString" name="recordDateString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="recordDate"/></font>
		</td>
	</tr>	
	
		