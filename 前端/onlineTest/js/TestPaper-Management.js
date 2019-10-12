function qTest(){
	var i=$(".qTest").val();
	if (i!=0) {
		$.ajax({
			type:"get",
			url:"http://localhost:1360/TestPaper.asmx/qTest",
			data:{
				value:i
			},
			success:function (result) {
				$("#Test").empty().append(result);
				
			},
			error:function(){
				alert("目前没有这个专业的试题,您可以先添加试题!");
			}
			
		})
	} else{
		alert("请选择专业!");
	}
}