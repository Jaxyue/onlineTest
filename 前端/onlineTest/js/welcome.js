
function stevalue(){
	$("#userName").val(sessionStorage.getItem("userName"));
	
}
function updata(){
	var Name=$("#userName").val();
	var cpwd=$("#cpwd").val();
	var npwd=$("#npwd").val();
	var account={
		"userName":Name,
		"cpwd":cpwd,
		"npwd":npwd,
		"type":sessionStorage.getItem("type")
	}
	var jstr=JSON.stringify(account);
	alert(jstr);
	$.ajax({
		type:"post",
		url:"http://localhost:1360/welcome.asmx/reset",
		data:jstr,
		success:function (result) {
			if (result=="True") {
				alert("Successful modification, you will re-login!");
				window.location = "login.html"
			} else{
				alert("Modification failed");
			}
			
		},
		error:function(){
			alert("The IP address of the server could not be found!");
		}
	});
}
//获取表
function gettable() {
    window.location = "http://localhost:1290/productServices.asmx/gettable";
}
function showTable(data) {
    var tbStr = "<tr><th>员工编号</th>";
    tbStr += "<th>员工姓名</th>";
    tbStr += "<th>职位</th>"
    tbStr += "<th>上级编号</th>"
    tbStr += "<th>入职日期</th>"
    tbStr += "<th>基本工资</th>"
    tbStr += "<th>奖金</th>"
    tbStr += "<th>部门编号</th>"
    tbStr += "<th>操作</th></tr>"
    var jstr = JSON.parse(data);
    

    for (var i = 0; i <jstr.length; i++) {
        tbStr += "<tr><td>" + jstr[i].empId + "</td>";
        tbStr += "<td>" + jstr[i].empName + "</td>";
        tbStr += "<td>" + jstr[i].empPosition + "</td>";
        tbStr += "<td>" + jstr[i].empHrId + "</td>";
        tbStr += "<td>" + jstr[i].empInDate + "</td>";
        tbStr += "<td>" + jstr[i].empSalary + "</td>";
        tbStr += "<td>" + jstr[i].empBonus + "</td>";
        tbStr += "<td>" + jstr[i].deptId + "</td>";
        tbStr += "<td><button type='button' class='btn btn-primary' data-toggle='modal' data-target='#Modify' onclick='Modify(this)'>修改</button>&nbsp;&nbsp;<input type='button' class='btn btn-danger' onclick='remove(this)' value='删除'></td></tr>"
    }
		$("#table").empty().append(tbStr);
    }
