<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=People.TABLE_ALIAS%>编辑</title>
	<script type="text/javascript" src="${ctx}/theme/katniss/js/jquery.validate.min.js"></script>
</rapid:override>

<rapid:override name="content">
	<form:form method="put" action="${ctx}/people/${people.personId}" modelAttribute="people" cssClass="stdform" id="form1" >
		<%@ include file="form_include.jsp" %>
	</form:form>
	<script type="text/javascript">
// With Form Validation
jQuery("#form1").validate({
	highlight: function(label) {
		jQuery(label).closest('.control-group').addClass('error');
    },
    success: function(label) {
    	label
    		.text('Ok!').addClass('valid')
    		.closest('.control-group').addClass('success');
    }
});
</script>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>