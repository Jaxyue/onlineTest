window.onload=function(){
	$.ajax({
		type:"get",
		url:"http://localhost:1360/Professional_Manage.asmx/findAll",
		success: function (data) {
		   showTable(data);
		},
		error: function () { 
			alert("The IP address of the server could not be found!")
		}
	})
}
function showTable(data) {
    var tbStr = "<tr><th>专业编号</th>";
    tbStr += "<th>专业名称</th>";
    tbStr += "<th>院系编号</th>"
	 tbStr += "<th>操作</th>"
    var jstr = JSON.parse(data);
    

    for (var i = 0; i <jstr.length; i++) {
        tbStr += "<tr><td>" + jstr[i].pId + "</td>";
        tbStr += "<td>" + jstr[i].pName + "</td>";
        tbStr += "<td>" + jstr[i].fId + "</td>";
		  tbStr += "<td><button type='button' class='btn btn-primary' data-toggle='modal' data-target='#Modify' onclick='Modify(this)'>修改</button>&nbsp;&nbsp;<input type='button' class='btn btn-danger' onclick='remove(this)' value='删除'></td></tr>"
    }
		$("#table").empty().append(tbStr);
    }