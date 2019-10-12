
function getTest(){
	$.ajax({
		type:"get",
		url:"http://localhost:1360/onlineTest.asmx/Test",
		data:{
			"userName":sessionStorage.getItem("userName"),
			"pwd":sessionStorage.getItem("pwd")
		},
		success:function(data){
			$("#Test").empty().append(data);
		},
		error:function(){}
	})
}
function Submission(){
	var Answer=new Array();
	var optionName=new Array();
	var ra=$("input:radio");
	var name=$("h3");
	for(var j=0;j<ra.length;j++){
		if(ra[j].checked){
				Answer.push(ra[j].value);
		}
	}
	for (var i = 0; i < name.length; i++) {
		if(ra[i].checked){
		optionName.push(name[i].innerText);
		}
	}
	if(Answer.length!=name.length){
		alert("请做完所有试题!");
	}
	else{
		$.ajax({
			type:"get",
			url:"http://localhost:1360/onlineTest.asmx/Answer",
			data:{
				Name:Answer,
				answer:optionName,
				user:sessionStorage.getItem("userName"),
				passw:sessionStorage.getItem("pwd")
			},
			traditional:true,
			cache:false,
			dataType:"JSON",
			success:function(data){
				alert("您的分数为:"+data+",并且已保存到数据库!",);
			},
			error:function(){}
		});
		
	}
	
	
	
}