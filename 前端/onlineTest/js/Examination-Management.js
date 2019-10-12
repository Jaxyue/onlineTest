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
