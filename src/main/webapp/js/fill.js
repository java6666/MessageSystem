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





















