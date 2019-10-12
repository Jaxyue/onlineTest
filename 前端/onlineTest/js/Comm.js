showMenu();
function showMenu() {
    var menu = sessionStorage.getItem("data");
    console.log(menu);
    $("#menu").empty().append(menu);
	var userName=sessionStorage.getItem("userName");
    document.getElementsByTagName("b")[0].innerHTML=userName;
	if(sessionStorage.getItem("userName")!=null){
		
	} else{
		window.location="login.html";
	}
}
