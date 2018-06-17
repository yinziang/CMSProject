/**
 * 这个是联系我们对应的js
 */
//加载完js文件后自动执行的函数
$(function(){
    load();
});

var params = {
    cname: "",
    ename: "",
    telphone: "",
    email: "",
    website: "",
    location: ""
}

/**
 * 加载时执行的函数
 */
function load(){
    $.ajax({
        type:'GET',
        dataType: 'json',
        url: 'http://localhost:8080/api/contact',
        success: function(res){
            console.log(res)
            if(res.status == 200){

                document.getElementById("company_cname").innerText = res.data.cname;
                document.getElementById("company_ename").innerText = res.data.ename;
                document.getElementById("company_telphone").innerText = "电话："+res.data.telphone;
                document.getElementById("company_email").innerText = "邮箱："+res.data.email;
                document.getElementById("company_website").innerText = "网址："+res.data.website;
                document.getElementById("company_location").innerText = "位置："+res.data.location;
            } else{
                alert("操作失败")
            }
        },
        error: function(xhr, type) {
            console.log("错误信息："+xhr.valueOf(), type)
        }
    });
}
