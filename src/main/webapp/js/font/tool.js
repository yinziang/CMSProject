$(document).ready(function () {
    var isMobile = /Android|webOS|iPhone|iPad|BlackBerry/i.test(navigator.userAgent)
    if (isMobile) {
        console.log("手机。。")
    } else {
        // 当前网页在PC端打开
        console.log("电脑。。")
        dropdownopen();
    }

})

/**
 * 实现当鼠标移动到下拉框的时候自动展开下拉框，移开的时候自动显示下拉框
 */
function dropdownopen() {
    var $dropdownli = $('li.dropdown');
    $dropdownli.mouseover(function () {
        $(this).addClass("open");
    });

    $dropdownli.mouseout(function(){
        $(this).removeClass("open");
    })

}
