window.onload=getoption();
//获取表格
function getoption (){
	$.ajax({
		type:"get",
		url:"http://localhost:1360/Paper-Management.asmx/getAll",
		success:function (data) {
			showTable(data);
		},
		error:function () {
			
		}
	})
	
}
function down(){
	window.location="http://localhost:1360/Excel.asmx/Paper";
	
}
//添加试题
function Add() {
    var inputs = document.getElementsByClassName("add");
    var optionStem = {
        optionName: inputs[1].value,
        optionA: inputs[2].value,
        optionB: inputs[3].value,
        optionC: inputs[4].value,
        optionD: inputs[5].value,
        optionCorrect: inputs[6].value,
		pId:inputs[7].value
    }

    var jStr = JSON.stringify(optionStem);
    $.ajax({
        type: 'post',
        url: 'http://localhost:1360/Paper-Management.asmx/add',
        async: true,
        dataType: 'text',
        data: jStr,
        success: function (result) {
            alert("成功");
			window.location="Paper-Management.html";
        },
        error: function () {
            alert("失败!");
        }
    })

}
//修改试题
function Modify(btn) {
    var tbs = btn.parentNode.parentNode;
    var inputs = document.getElementsByClassName("Modify");
    for (var i = 0; i < inputs.length; i++) {
        inputs[i].value = tbs.children[i].innerHTML;
    }
}
function Modi(btn) {
    var inputs = document.getElementsByClassName("Modify");
    var optionStem = {
        optionId: inputs[0].value,
        optionName: inputs[1].value,
        optionA: inputs[2].value,
        optionB: inputs[3].value,
        optionC: inputs[4].value,
        optionD: inputs[5].value,
        optionCorrect: inputs[6].value,
    }
    var mStr = JSON.stringify(optionStem);
    $.ajax({
        type: 'post',
        url:"http://localhost:1360/Paper-Management.asmx/Modify",
        async: true,
        dataType: 'text',
        data: mStr,
        success: function (result) {
            alert("成功");
			window.location="Paper-Management.html";
        },
        error: function () {
            alert("失败!");
        }
    })


}
//删除试题
function remove(btn){
	 if (confirm("是否删除?")) {
        var trs = btn.parentNode.parentNode.children[0].innerHTML;
        console.log(trs);

        $.ajax({
            Type: 'get',
            url:"http://localhost:1360/Paper-Management.asmx/remove",
            async: true,
            data: { 'ID': trs },
            success: function (result) {
                alert("成功!");
				getoption();
            },
            error: function () {
                alert("失败!");
            }
        })
    }
    
}
//显示表格
function showTable(data) {
   var tbStr = "<tr><th>试题编号</th>";
   tbStr += "<th>试题</th>";
   tbStr += "<th>A选项</th>"
   tbStr += "<th>B选项</th>"
   tbStr += "<th>C选项</th>"
   tbStr += "<th>D选项</th>"
   tbStr +="<th>正确答案</th>"
   tbStr +="<th>操作</th>"
    var jstr = JSON.parse(data);
    

    for (var i = 0; i <jstr.length; i++) {
        tbStr += "<tr><td>" + jstr[i].optionId + "</td>";
		tbStr += "<td>" + jstr[i].optionName + "</td>";
        tbStr += "<td>" + jstr[i].optionA + "</td>";
        tbStr += "<td>" + jstr[i].optionB + "</td>";
        tbStr += "<td>" + jstr[i].optionC + "</td>";
        tbStr += "<td>" + jstr[i].optionD + "</td>";
        tbStr += "<td>" + jstr[i].optionCorrect + "</td>";
        tbStr += "<td><button type='button' class='btn btn-primary' data-toggle='modal' data-target='#Modify' onclick='Modify(this)'>修改</button>&nbsp;&nbsp;<input type='button' class='btn btn-danger' onclick='remove(this)' value='删除'></td></tr>"
    }
		$("#table").empty().append(tbStr);
    }
