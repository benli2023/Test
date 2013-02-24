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
					<input type="text" id="name" class="input-medium" placeholder="<%=People.ALIAS_NAME%>" value="${query.name}" id="name" name="name" ><!-- <span class="help-inline">Exampleblock-level help text here.</span>  -->
				 </div>
			 </div>
			 <div class="control-group">
			 	<label  class="control-label" for="age"><%=People.ALIAS_AGE%></label> 
				 <div class="controls">
					<input type="text" id="age" class="input-medium" placeholder="<%=People.ALIAS_AGE%>" value="${query.age}" id="age" name="age" ><!-- <span class="help-inline">Exampleblock-level help text here.</span>  -->
				 </div>
			 </div>
			  <div class="control-group">
			 	<label  class="control-label" for="recordDateBegin"><%=People.ALIAS_RECORD_DATE%></label> 
				 <div class="controls">
				 	<input  type="text"  class="input-small" value="<fmt:formatDate value='${query.recordDateBegin}' pattern='<%=People.FORMAT_RECORD_DATE%>'/>"  id="recordDateBegin" name="recordDateBegin"   />
				 	<input  type="text"  class="input-small" value="<fmt:formatDate value='${query.recordDateEnd}' pattern='<%=People.FORMAT_RECORD_DATE%>'/>"  id="recordDateEnd" name="recordDateEnd"   />
					<!-- <span class="help-inline">Exampleblock-level help text here.</span>  -->
				 </div>
			 </div>
			 <div class="control-group">
				 	 <div class="controls">
						<!--  <label class="checkbox"><input type="checkbox"> Check me out </label>-->
						<input type="submit" class="btn" onclick="getReferenceForm(this).action='${ctx}/people'" value="查询"></input>
						<input type="button" class="btn"  onclick="window.location = '${ctx}/people/new'" value="新增"></input>
						<input type="button" class="btn"  onclick="doRestBatchDelete('${ctx}/people','items',document.forms.queryForm)" value="删除"></input>
					</div>
				</div>	
		</fieldset>
	
		<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery( "#recordDateBegin" ).datepicker({dateFormat: 'yy-mm-dd'});
			jQuery( "#recordDateEnd" ).datepicker({dateFormat: 'yy-mm-dd'});
		 });
		</script>
			
  <div class="divider30"></div>
  <h4 class="widgettitle">Deletable Row</h4>
		<table class="table table-bordered">
		   			<colgroup>
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                    </colgroup>
		  <thead>
			  <tr>
				<th class="centeralign"><input type="checkbox" class="checkall" onclick="setAllCheckboxState('items',this.checked)"/></th>
				<th sortColumn="Name" ><%=People.ALIAS_NAME%></th>
				<th sortColumn="Age" ><%=People.ALIAS_AGE%></th>
				<th sortColumn="RecordDate" ><%=People.ALIAS_RECORD_DATE%></th>
				<th>&nbsp;</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<!-- <td>${page.thisPageFirstElementNumber + status.index}</td>-->
				<td  class="centeralign"><input type="checkbox" name="items" value="${item.personId}"></td>
				<td><c:out value='${item.name}'/>&nbsp;</td>
				<td><c:out value='${item.age}'/>&nbsp;</td>
				<td><c:out value='${item.recordDateString}'/>&nbsp;</td>
				<td  class="centeralign">
					<a href="${ctx}/people/${item.personId}">查看</a>
					<a 	title="编辑" href="${ctx}/people/${item.personId}/edit"><span class="icon-edit"></span></a>
					<a  title="删除" href="${ctx}/people/${item.personId}" onclick="doRestDelete(this,'你确认删除?');return false;" class="deleterow"><span class="icon-trash"></span></a>
				</td>
			  </tr>
		  	  </c:forEach>
		  </tbody>
		</table>
		<simpletable:pageToolbar page="${page}">
		</simpletable:pageToolbar>
		
	</form>
	

</rapid:override>


<%@ include file="base.jsp" %>
