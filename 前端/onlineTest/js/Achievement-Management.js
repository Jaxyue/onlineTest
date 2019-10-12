window.onload=function(){
	$.ajax({
		type:"get",
		url:"http://localhost:1360/onlineTest.asmx/Fraction",
		success:function(data){
			showTable(data);
		},
		error:function(){}
	})
}
function download(){
	window.location="http://localhost:1360/Excel.asmx/Achievement";
}

function showTable(data) {
    var tbStr = "<tr><th>学号</th>";
    tbStr += "<th>学生姓名</th>";
    tbStr += "<th>所属院系</th>"
    tbStr += "<th>专业</th>"
    tbStr += "<th>年级</th>"
	tbStr += "<th>班级</th>"
	tbStr+="<th>分数</th>"
    var jstr = JSON.parse(data);
    

    for (var i = 0; i <jstr.length; i++) {
        tbStr += "<tr><td>" + jstr[i].stuId + "</td>";
        tbStr += "<td>" + jstr[i].userName + "</td>";
        tbStr += "<td>" + jstr[i].fName + "</td>";
        tbStr += "<td>" + jstr[i].pName + "</td>";
        tbStr += "<td>" + jstr[i].gNo + "</td>";
		tbStr += "<td>" + jstr[i].cName + "</td>";
		if(jstr[i].Fraction==null){
			tbStr += "<td>缺考</td>";
		}
		else{
			tbStr+="<td>"+jstr[i].Fraction+"</td>";
		}
    }
		$("#table").empty().append(tbStr);
    }