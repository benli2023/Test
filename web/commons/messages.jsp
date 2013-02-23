<%@ include file="/commons/taglibs.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%-- Error Messages --%>
<c:if test="${flash.success != null}">	
	<div class="alert alert-success">
         <button type="button" class="close" data-dismiss="alert">×</button>
         <strong>Well done!</strong> ${flash.success}.
     </div>
	
</c:if>
<%-- Info Messages --%>
<c:if test="${flash.error != null}">
	<div class="alert alert-error">
          <button type="button" class="close" data-dismiss="alert">×</button>
          <strong>Oh snap!</strong>${flash.error}.
     </div>
</c:if>


