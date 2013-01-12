<%@page import="com.company.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=People.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="people"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/people'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="personId" name="personId" value="${people.personId}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=People.ALIAS_NAME%></td>	
				<td><c:out value='${people.name}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=People.ALIAS_AGE%></td>	
				<td><c:out value='${people.age}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=People.ALIAS_RECORD_DATE%></td>	
				<td><c:out value='${people.recordDateString}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>