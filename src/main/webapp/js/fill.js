/**
 * Created by Administrator on 2017/4/7.
 */
/*
*  胡正蛮   选择地址，图片事件切换
* */
/*移进*/
function  CitySelectionTwo(){
    var img = document.getElementById('img');
    var CitySelectionImg=document.getElementById("CitySelectionImg");
    /*切换图片*/
    img.src = "img/CitySelectionTwo.png";
    /*改变背景颜色*/
    CitySelectionImg.style.cssText = "background-color: #F3F3F3;";
}
/*移出事件*/
function  CitySelectionOen(){
    var img = document.getElementById('img');
    var CitySelectionImg=document.getElementById("CitySelectionImg");
    /*切换图片*/
    img.src = "img/CitySelectionOen.jpg";
    /*改变背景颜色*/
    CitySelectionImg.style.cssText = "background-color: #FFFFFF;";
}

/*选择城市块，移动改变背景颜色*/
//获取所有li的节点
var list =document.getElementsByTagName("li");
//给每个li绑定事件
for(var i=0;i<list.length;i++){
    list[i].onmousemove=function(){
        this.style.backgroundColor="#00bff6";
    };
    list[i].onmouseout=function(){
        this.style.backgroundColor="";
    };
}
/*显示隐藏的div(选择城市 )*/
function display_city_chunk(){

    document.getElementById('city_chunk').style.display = document.getElementById('city_chunk').style.display=='none'?'block':'none';

}
/*显示隐藏的div(选择城市地区)*/
function display_conceal_city(){

        document.getElementById('region').style.display = 'block';
        $("#confirm_cancel").css("margin-top","270px");
    /*document.getElementById('region').style.display = document.getElementById('region').style.display=='none'?'block':'block';*/
}
/*隐藏div(选择城市)*/
function none_conceal_city(){
    document.getElementById('city_chunk').style.display = 'none';
}


















