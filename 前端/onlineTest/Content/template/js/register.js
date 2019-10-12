function regist() {
    $(".cls-content-sm").css("display", "none");
    $(".cls-content").css({
        "transform": "rotateY(-180deg)",
        "transition":"all 2s ease-in-out"
    })
    $(".register").css({
        "display": "block",
        "transform": "rotateY(180deg)",
        "transition": "all 2s ease-in-out"

    });
    
}
function login() {
    $(".register").css("display", "none");
    $(".cls-content").css({
        "transform": "rotateY(-180deg)",
        "transition": "all 2s ease-in-out"
    })
    $(".cls-content-sm").css({
        "display": "block",
        "transform": "rotateY(180deg)",
        "transition": "all 2s ease-in-out"

    });

}
