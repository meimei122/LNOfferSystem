$(document).ready(function(){
	 $.ajax({
		 type : "post",
		 url  : "${pageContext.request.contextPath}/data/type.do",   
		 dataType : "json",
		 success : function(result) {
			var str = '';
			for(var i in result) {
			str += '<option value="'+result[i].userTypeId+'">'+result[i].typecontest+'</option>';
			}
			$("#userTypeId").append(str);
			$('#userTypeId').selectpicker('render');
            $('#userTypeId').selectpicker('refresh');
		 }
	  });
	 $.ajax({
		 type : "post",
		 url  : "${pageContext.request.contextPath}/data/question.do",   
		 dataType : "json",
		 success : function(result) {
			var str = '';
			for(var i in result) {
			str += '<option value="'+result[i].questionId+'">'+result[i].problemContent+'</option>';
			}
			$("#questionid").append(str);
			$('#questionid').selectpicker('render');
            $('#questionid').selectpicker('refresh');
		 }
	  });
});