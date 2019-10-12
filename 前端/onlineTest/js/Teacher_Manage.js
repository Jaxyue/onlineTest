window.onload=function(){
	$.ajax({
		type:"get",
		url:"http://localhost:1360/Teacher_Manage.asmx/FindAll",
		success:function (data) {
			showTable(data);
			
		},
		error:function(){
			alert("The IP address of the server could not be found!");
		}
		
	})
}
function Modify(btn) {
    var tbs = btn.parentNode.parentNode;
    var inputs = document.getElementsByClassName("Modify");
    for (var i = 0; i < inputs.length; i++) {
		
        inputs[i].value = tbs.children[i].innerHTML;
		console.log(inputs[i].value);
    }
	$.ajax({
		type:"get",
		url:"http://localhost:1360/student-Management.asmx/Faculty",
		success:function(data){
			var jstr = JSON.parse(data);
		    var option = "<option value=''>请选择</option>";
			var f=100;
			for (var i = 0; i < jstr.length; i++) {
	            option += "<option value='" +f+ "'>";
	            option += jstr[i].fName + "</option>";
				f+=10;
	        }
			$("#Faculty").empty().append(option);
		},
		error:function(){}
		
	})
}
$("#Faculty").change(function(){
	var type=$('#Faculty option:selected').val();
	
	$.ajax({
		type:"post",
		url:"http://localhost:1360/student-Management.asmx/Professional?type="+type,
		success:function(data){
			var jstr = JSON.parse(data);
			
		    var option = "<option value=''>请选择</option>";
			var p=1;
			for (var i = 0; i < jstr.length; i++) {
		        option += "<option value='" +p+ "'>";
		        option += jstr[i].pName + "</option>";
				p+=1;
				
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
			var g=2016;
			for (var i = 0; i < jstr.length; i++) {
		        option += "<option value='" +g+ "'>";
		        option += jstr[i].gNo + "</option>";
				g+=1;
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
			var c=1;
			for (var i = 0; i < jstr.length; i++) {
		        option += "<option value='" +c+ "'>";
		        option += jstr[i].cName + "</option>";
				c+=1;
		    }
			$("#classes").empty().append(option);
		},
		error:function(){}
		
	})
	
})

function Modi(btn) {
    var inputs = document.getElementsByClassName("Modify");
    var optionStem = {
        tId: inputs[0].value,
        userName: inputs[1].value,
        fName: $("#Faculty option:selected").val(),
        pName: $("#Professional option:selected").val(),
        gName: $("#Grade option:selected").val(),
		cName:$("#classes option:selected").val()
    }
    var mStr = JSON.stringify(optionStem);
    $.ajax({
        type: 'post',
        url:"http://localhost:1360/Teacher_Manage.asmx/modify",
        async: true,
        dataType: 'text',
        data: mStr,
        success: function (result) {
            alert("成功");
			window.location="Teacher-Management.html";
        },
        error: function () {
            alert("失败!");
        }
    })


}
function remove(btn){
	 if (confirm("是否删除?")) {
        var trs = btn.parentNode.parentNode.children[0].innerHTML;
        console.log(trs);

        $.ajax({
            Type: 'get',
            url: 'http://localhost:1360/Teacher_Manage.asmx/remove',
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
    var tbStr = "<tr><th>教师编号</th>";
    tbStr += "<th>教师姓名</th>";
    tbStr += "<th>所属院系</th>"
    tbStr += "<th>专业</th>"
	tbStr+="<th>年级</th>"
	tbStr += "<th>班级</th>"
	tbStr +="<th>操作</th>"
    var jstr = JSON.parse(data);
    

    for (var i = 0; i <jstr.length; i++) {
        tbStr += "<tr><td>" + jstr[i].tId + "</td>";
        tbStr += "<td>" + jstr[i].userName + "</td>";
        tbStr += "<td>" + jstr[i].fName + "</td>";
        tbStr += "<td>" + jstr[i].pName + "</td>";
		tbStr += "<td>" + jstr[i].gNo + "</td>";
        tbStr += "<td>" + jstr[i].cName + "</td>";
        tbStr += "<td><button type='button' class='btn btn-primary' data-toggle='modal' data-target='#Modify' onclick='Modify(this)'>修改</button>&nbsp;&nbsp;<input type='button' class='btn btn-danger' onclick='remove(this)' value='删除'></td></tr>"
    }
		$("#table").empty().append(tbStr);
    }