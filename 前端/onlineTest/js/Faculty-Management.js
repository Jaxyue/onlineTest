window.onload=function(){
	$.ajax({
		type:"get",
		url:"http://localhost:1360/Faculty.asmx/getAl",
		success:function (data) {
			showTable(data);
			
		},
		error:function(){
			alert("The IP address of the server could not be found!");
		}
		
	})
	
}

function showTable(data) {
    var tbStr = "<tr><th>院系编号</th>";
    tbStr += "<th>院系名称</th>";
    var jstr = JSON.parse(data);
    

    for (var i = 0; i <jstr.length; i++) {
        tbStr += "<tr><td>" + jstr[i].fId + "</td>";
        tbStr += "<td>" + jstr[i].fName + "</td>";
        tbStr += "<td><button type='button' class='btn btn-primary' data-toggle='modal' data-target='#Modify' onclick='Modify(this)'>修改</button>&nbsp;&nbsp;<input type='button' class='btn btn-danger' onclick='remove(this)' value='删除'></td></tr>"
    }
		$("#table").empty().append(tbStr);
    }