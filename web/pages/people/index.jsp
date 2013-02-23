<%@page import="com.company.project.model.*" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=People.TABLE_ALIAS%> 维护</title>
	
	<script src="${ctx}/scripts/rest.js" ></script>
	<link href="<c:url value="/widgets/simpletable/simpletable.css"/>" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/widgets/simpletable/simpletable.js"/>"></script>
	
	<script type="text/javascript" >
		jQuery(document).ready(function() {
			// 分页需要依赖的初始化动作
			window.simpleTable = new SimpleTable('queryForm',${page.thisPageNumber},${page.pageSize},'${pageRequest.sortColumns}');
		});
	</script>
</rapid:override>

<rapid:override name="content">



	<form class="form-horizontal"  id="queryForm" name="queryForm" method="get" >
		<fieldset>
			<legend>搜索</legend>
			
			 <div class="control-group">
			 	<label  class="control-label" for="name"><%=People.ALIAS_NAME%></label> 
				 <div class="controls">
					<input type="text" id="name"  placeholder="<%=People.ALIAS_NAME%>" value="${query.name}" id="name" name="name" ><!-- <span class="help-inline">Exampleblock-level help text here.</span>  -->
					
				 </div>
			 </div>
			 <div class="control-group">
			 	<label  class="control-label" for="age"><%=People.ALIAS_AGE%></label> 
				 <div class="controls">
					<input type="text" id="age"  placeholder="<%=People.ALIAS_AGE%>" value="${query.age}" id="age" name="age" ><!-- <span class="help-inline">Exampleblock-level help text here.</span>  -->
					
				 </div>
			 </div>
			  <div class="control-group">
			 	<label  class="control-label" for="recordDateBegin"><%=People.ALIAS_RECORD_DATE%></label> 
				 <div class="controls">
				 	<input  type="text"  class="input-medium" value="<fmt:formatDate value='${query.recordDateBegin}' pattern='<%=People.FORMAT_RECORD_DATE%>'/>"  id="recordDateBegin" name="recordDateBegin"   />
				 	<input  type="text"  class="input-medium" value="<fmt:formatDate value='${query.recordDateEnd}' pattern='<%=People.FORMAT_RECORD_DATE%>'/>"  id="recordDateEnd" name="recordDateEnd"   />
				 
					<!-- <span class="help-inline">Exampleblock-level help text here.</span>  -->
					
				 </div>
			 </div>
			 
			 <div class="control-group">
				 	 <div class="controls">
						<!--  <label class="checkbox"><input type="checkbox"> Check me out </label>-->
						<input type="submit" class="btn btn-primary" onclick="getReferenceForm(this).action='${ctx}/people'" value="查询"></input>
						<input type="button" class="btn btn-success"  onclick="window.location = '${ctx}/people/new'" value="新增"></input>
						<input type="button" class="btn btn-danger"  onclick="doRestBatchDelete('${ctx}/people','items',document.forms.queryForm)" value="删除"></input>
					</div>
				</div>	
		</fieldset>
	
		<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery( "#recordDateBegin" ).datepicker({dateFormat: 'yy-mm-dd'});
			jQuery( "#recordDateEnd" ).datepicker({dateFormat: 'yy-mm-dd'});
		 });
		</script>

<!-- 
	<form id="queryForm" name="queryForm" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=People.ALIAS_NAME%></td>		
					<td>
						<input value="${query.name}" id="name" name="name" maxlength="45"  class=""/>
					</td>
					<td class="tdLabel"><%=People.ALIAS_AGE%></td>		
					<td>
						<input value="${query.age}" id="age" name="age" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=People.ALIAS_RECORD_DATE%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.recordDateBegin}' pattern='<%=People.FORMAT_RECORD_DATE%>'/>" onclick="WdatePicker({dateFmt:'<%=People.FORMAT_RECORD_DATE%>'})" id="recordDateBegin" name="recordDateBegin"   />
						<input value="<fmt:formatDate value='${query.recordDateEnd}' pattern='<%=People.FORMAT_RECORD_DATE%>'/>" onclick="WdatePicker({dateFmt:'<%=People.FORMAT_RECORD_DATE%>'})" id="recordDateEnd" name="recordDateEnd"   />
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/people'"/>
			<input type="button" class="stdButton" style="width:80px" value="新增" onclick="window.location = '${ctx}/people/new'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="doRestBatchDelete('${ctx}/people','items',document.forms.queryForm)"/>
		<div>
	
	</div>
	 -->
	
	<div class="gridTable">
	
		<simpletable:pageToolbar page="${page}">
		</simpletable:pageToolbar>
	
		<table width="100%"  border="0" cellspacing="0" class="gridBody">
		  <thead>
			  
			  <tr>
				<th style="width:1px;"> </th>
				<th style="width:1px;"><input type="checkbox" onclick="setAllCheckboxState('items',this.checked)"></th>
				
				<!-- 排序时为th增加sortColumn即可,new SimpleTable('sortColumns')会为tableHeader自动增加排序功能; -->
				<th sortColumn="Name" ><%=People.ALIAS_NAME%></th>
				<th sortColumn="Age" ><%=People.ALIAS_AGE%></th>
				<th sortColumn="RecordDate" ><%=People.ALIAS_RECORD_DATE%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="${item.personId}"></td>
				
				<td><c:out value='${item.name}'/>&nbsp;</td>
				<td><c:out value='${item.age}'/>&nbsp;</td>
				<td><c:out value='${item.recordDateString}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/people/${item.personId}">查看</a>&nbsp;&nbsp;
					<a href="${ctx}/people/${item.personId}/edit">修改</a>&nbsp;&nbsp;
					<a href="${ctx}/people/${item.personId}" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
				</td>
			  </tr>
			  
		  	  </c:forEach>
		  </tbody>
		</table>
	
		<simpletable:pageToolbar page="${page}">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
		
	</div>
	</form>
	

</rapid:override>


<%@ include file="base.jsp" %>
