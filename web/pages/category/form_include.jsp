<%@page import="com.company.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="cateId" name="cateId" value="${category.cateId}"/>

	<tr>	
		<td class="tdLabel">
			<%=Category.ALIAS_PARENT_ID%>:
		</td>		
		<td>
		<form:input path="parentId" id="parentId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="parentId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Category.ALIAS_CATE_NAME%>:
		</td>		
		<td>
		<form:input path="cateName" id="cateName" cssClass="" maxlength="128" />
		<font color='red'><form:errors path="cateName"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Category.ALIAS_IS_AVAILABLE%>:
		</td>		
		<td>
		<form:input path="isAvailable" id="isAvailable" cssClass="" maxlength="1" />
		<font color='red'><form:errors path="isAvailable"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Category.ALIAS_CTIME%>:
		</td>		
		<td>
		<input value="${category.ctimeString}" onclick="WdatePicker({dateFmt:'<%=Category.FORMAT_CTIME%>'})" id="ctimeString" name="ctimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="ctime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Category.ALIAS_ADMIN%>:
		</td>		
		<td>
		<form:input path="admin" id="admin" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="admin"/></font>
		</td>
	</tr>	
	
		