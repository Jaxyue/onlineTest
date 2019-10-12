function Login() {
    var value;
    var radio = document.getElementsByClassName("radio");
    for (var i = 0; i < radio.length; i++) {
        if (radio[i].checked == true) {
            value = radio[i].value;
            console.log(radio[i].value);
            break;
        } 
    }
    if (value==null) {
        alert("Please select the login type!");
    }
    else {
        var Name = $("#Name").val();
        var Pwd = $("#Pwd").val();
        var account = {
            userName: Name,
            pwd: Pwd,
            type:value
        }

        var jStr = JSON.stringify(account);
        $.ajax({
            type: "post",
            url: "http://localhost:1360/Login.asmx/login?Name"+jStr,
            data: jStr,
            success: function (data) {
                if (data=="False") {
					alert("ERROR Incorrect username or password!");
                	
                } else{
					sessionStorage.setItem("data",data);
					sessionStorage.setItem("userName",Name);
					sessionStorage.setItem("pwd",Pwd);
					sessionStorage.setItem("type",value);
					window.location = "welcome.html"
                }
            },
            error: function () { 
				alert("The IP address of the server could not be found!")
			}
        })
    }
}

function registe (){
	
}