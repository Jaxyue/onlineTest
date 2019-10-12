window.onload=function(){
	$.ajax({
		type:"get",
		url:"http://localhost:1360/Grade_manage.asmx/findAll",
		success: function (data) {
		   showTable(data);
		},
		error: function () { 
			alert("The IP address of the server could not be found!")
		}
	})
}
function showTable(data) {
    var tbStr = "<tr><th>年级编号</th>";
    tbStr += "<th>年级名称</th>";
    tbStr += "<th>年级</th>"
	 tbStr += "<th>操作</th>"
    var jstr = JSON.parse(data);
    

    for (var i = 0; i <jstr.length; i++) {
        tbStr += "<tr><td>" + jstr[i].gId + "</td>";
        tbStr += "<td>" + jstr[i].gName + "</td>";
        tbStr += "<td>" + jstr[i].gNo + "</td>";
		  tbStr += "<td><button type='button' class='btn btn-primary' data-toggle='modal' data-target='#Modify' onclick='Modify(this)'>修改</button>&nbsp;&nbsp;<input type='button' class='btn btn-danger' onclick='remove(this)' value='删除'></td></tr>"
    }
		$("#table").empty().append(tbStr);
    }