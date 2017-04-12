/*
* 胡正蛮
* */
function show_none() {
    var list =document.getElementsByClassName('menus');
    for(var i=0;i<list.length;i++){
        list[i].onmousemove=function(){
            this.style.backgroundColor="#5521CB";
        };
        list[i].onmouseout=function(){
            this.style.backgroundColor="";
        };
    }
}
function onclick_bgcolor(){
    var list =document.getElementsByClassName('menus');
    for(var i=0;i<list.length;i++){
        list[i].onclick=function(){
            this.style.backgroundColor="#1355FF";
        };
    }
}
/*提交按钮事件*/
function on_Over(obj) {
    obj.style.color="black";
    obj.style.backgroundColor="#55A0E4";
}
function on_Out(obj){
    obj.style.color="white";
    obj.style.backgroundColor="";
}
function on_onclick(obj){
    obj.style.backgroundColor="#5521CB";
}
/*管理员选择功能菜单显示隐藏切换*/
function show_message_input(index) {

    for(var i=1;i<=4;i++)
    {
        document.getElementById("message"+i).style.display = i==index?"block":"none";
    }
    /*事件冒泡*/
    var e = window.event || arguments[0]
    window.event? window.event.cancelBubble = true : e.stopPropagation();
}



















