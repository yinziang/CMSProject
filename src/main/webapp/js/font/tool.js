$(document).ready(function () {
    dropdownopen();
})

/**
 * 实现当鼠标移动到下拉框的时候自动展开下拉框，移开的时候自动显示下拉框
 */
function dropdownopen() {
    var $dropdownli = $('li.dropdown');
    $dropdownli.mouseover(function() {
        $(this).addClass('open');
    }).mouseout(function() {
        $(this).removeClass('open');
    });
}
