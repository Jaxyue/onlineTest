window.onload=getlist();
function getlist(){
	$.ajax({
		type:"get",
		url:"http://localhost:1360/student-Management.asmx/Faculty",
		success:function(data){
			var jstr = JSON.parse(data);
		    var option = "<option value=''>请选择</option>";
			
			for (var i = 0; i < jstr.length; i++) {
                option += "<option value='" + i + "'>";
                option += jstr[i].fName + "</option>";
            }
			$("#Faculty").empty().append(option);
		},
		error:function(){}
		
	})
	
}
function down(){
	window.location="http://localhost:1360/Excel.asmx/student";
}
function findall(){
	$.ajax({
		type:"get",
		url:"http://localhost:1360/student-Management.asmx/findall",
		success:function(data){
			showTable(data);
		},
		error:function(){}
		
	})
	getlist();
}
$("#Faculty").change(function(){
	var type=$('#Faculty option:selected').val();
	
	$.ajax({
		type:"post",
		url:"http://localhost:1360/student-Management.asmx/Professional?type="+type,
		success:function(data){
			var jstr = JSON.parse(data);
			
		    var option = "<option value=''>请选择</option>";
			for (var i = 0; i < jstr.length; i++) {
		        option += "<option value='" + i + "'>";
		        option += jstr[i].pName + "</option>";
		    }
			$("#Professional").empty().append(option);
		},
		error:function(){}
		
	})
	
})
$("#Professional").change(function(){
	// var type=$('#Professional option:selected').val();
	// console.log(type);
	$.ajax({
		type:"get",
		url:"http://localhost:1360/student-Management.asmx/Grade",
		success:function(data){
			var jstr = JSON.parse(data);
			console.log(jstr);
		    var option = "<option value=''>请选择</option>";
			for (var i = 0; i < jstr.length; i++) {
		        option += "<option value='" + i + "'>";
		        option += jstr[i].gNo + "</option>";
		    }
			$("#Grade").empty().append(option);
		},
		error:function(){}
		
	})
	
})

$("#Grade").change(function(){
	var Professional=$('#Professional option:selected').text();
	var Grade=$('#Grade option:selected').text();
	
	$.ajax({
		type:"get",
		url:"http://localhost:1360/student-Management.asmx/Class",
		data:{
		"Professional":Professional,
		"Grade":Grade
	},
		success:function(data){
			var jstr = JSON.parse(data);
			console.log(jstr);
		    var option = "<option value=''>请选择</option>";
			for (var i = 0; i < jstr.length; i++) {
		        option += "<option value='" + i + "'>";
		        option += jstr[i].cName + "</option>";
		    }
			$("#classes").empty().append(option);
		},
		error:function(){}
		
	})
	
})

function searh(){
	var Professional=$('#Professional option:selected').text();
	var Grade=$('#Grade option:selected').text();
	var classes=$('#classes option:selected').text();
	console.log(Professional,Grade,classes);
	if (Professional==""||Grade==""||classes=="") {
		alert("请选择类型!");
	} else{
		$.ajax({
			type:"get",
			url:"http://localhost:1360/student-Management.asmx/query",
			data:{
				"Pro":Professional,
				"Grade":Grade,
				"classes":classes
			},		
			success:function(data){
				if(data=="无数据!"){
					alert(data);
				}
				else{
					showTable(data);
				}
				
			},
			error:function(){}
		})
	}
	
}
function remove(btn){
	 if (confirm("是否删除?")) {
        var trs = btn.parentNode.parentNode.children[0].innerHTML;
        console.log(trs);

        $.ajax({
            Type: 'get',
            url: 'http://localhost:1360/student-Management.asmx/remove',
            async: true,
            data: { 'ID': trs },
            success: function (result) {
                alert("成功!");
            },
            error: function () {
                alert("失败!");
            }
        })
    }
    
}
function showTable(data) {
    var tbStr = "<tr><th>学号</th>";
    tbStr += "<th>学生姓名</th>";
    tbStr += "<th>所属院系</th>"
    tbStr += "<th>专业</th>"
    tbStr += "<th>年级</th>"
	tbStr += "<th>班级</th>"
	tbStr +="<th>操作</th>"
    var jstr = JSON.parse(data);
    

    for (var i = 0; i <jstr.length; i++) {
        tbStr += "<tr><td>" + jstr[i].stuId + "</td>";
        tbStr += "<td>" + jstr[i].userName + "</td>";
        tbStr += "<td>" + jstr[i].fName + "</td>";
        tbStr += "<td>" + jstr[i].pName + "</td>";
        tbStr += "<td>" + jstr[i].gNo + "</td>";
		tbStr += "<td>" + jstr[i].cName + "</td>";
        tbStr += "<td><button type='button' class='btn btn-primary' data-toggle='modal' data-target='#Modify' onclick='Modify(this)'>修改</button>&nbsp;&nbsp;<input type='button' class='btn btn-danger' onclick='remove(this)' value='删除'></td></tr>"
    }
		$("#table").empty().append(tbStr);
    }