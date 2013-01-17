<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=People.TABLE_ALIAS%>新增</title>
</rapid:override>

<rapid:override name="content">
	<form:form method="post" action="${ctx}/people" modelAttribute="people" >
		<input id="submitButton" name="submitButton" type="submit" value="提交" />
		<input type="button" value="返回列表" onclick="window.location='${ctx}/people'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<table class="formTable">
		<%@ include file="form_include.jsp" %>
		</table>
	</form:form>
	
	<script>
		
		new Validation(document.forms[0],{onSubmit:true,onFormValidate : function(result,form) {
			var finalResult = result;
			
			//在这里添加自定义验证
			
			return disableSubmit(finalResult,'submitButton');
		}});
	</script>
<script>
		
	 new Validation(document.forms[0],{onSubmit:true,onFormValidate : function(result,form) {
			var finalResult = result;
			//To custom validation
			return disableSubmit(finalResult,'submitButton');
		}});
	 
	 var popupOption={
		 'staffId': {url:'${ctx}/staff/query',title:'选择用户'},
		 'custId':{url:'${ctx}/customer/query',title:'选择客户'}
	 };
	 
     var focusInput; 
     function fillBackAndCloseDialog(data){
    	 $(focusInput).val("");//clear data
        $(focusInput).val(data.staff_name).next('.userIDHidden:eq(0)').val(data.staffId);
    	$(focusInput).val(data.staff_name).next('.userIDHidden:eq(0)').val(data.staffId);
        $( "#dialog-modal").omDialog('close');
     };
    $(function() {
        $( "#dialog-modal").omDialog({
            autoOpen: false,
            width:535,
            height: 465,
            modal: true
        });
        
        for(var htmlId in popupOption) {
        	alert(htmlId);
		        $('#'+htmlId).keydown(function(e){
		            //if(e.keyCode==118){ //F7
		            	
		            	var fieldId=$(this).attr('id');
		            	var requestUrl=popupOption[fieldId].url;
		            	var title=popupOption[fieldId].title;
		                focusInput=this; 
			            $( "#dialog-modal").omDialog({
			            	title:title
			            });
		                $( "#dialog-modal").omDialog('open');
		                var frameLoc=window.frames[0].location;
		                var date=new Date();
		                frameLoc.href=requestUrl+"?fieldId="+fieldId;
		                return false;
		           // }else{
		             //   return false; //forbide any input
		            //}
		        });
        }
        
        $('#myform').submit(function() {
            alert('userID1='+$('#userID1').val()+',userID2='+$('#userID2').val()+',userID3='+$('#userID3').val());
            return false;//返回false,阻止浏览器默认行为
        });
    });
		
	</script>
</rapid:override>


<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>
