<%@page import="com.company.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<div class="widgetcontent">
  			<input type="hidden" id="personId" name="personId" value="${people.personId}"/>
          	<div class="par control-group">
              	<label class="control-label" for="name"><%=People.ALIAS_NAME%></label>
                  <div class="controls">
                   <input type="text" name="name" id="name" class="required" value="${people.name}"/>
                   <font color='red'><form:errors path="name"/></font>
                  </div>
              </div>
              <div class="control-group">
              	<label class="control-label" for="age"><%=People.ALIAS_AGE%></label>
                  <div class="controls">
                  <input type="text" name="age" id="age" class="required number" value="${people.age}"/>
                  <font color='red'><form:errors path="age"/></font>
                   </div>
               </div>
               
               <p class="stdformbutton">
               <input id="submitButton" name="submitButton" type="submit" value="提交"  class="btn btn-success"/>
				<input type="button" value="返回列表" onclick="window.location='${ctx}/people'"  class="btn"/>
				<input type="button" value="后退" onclick="history.back();" class="btn"/>
              </p>
          
 </div><!--widgetcontent-->
      
      
	
		