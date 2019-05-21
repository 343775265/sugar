<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>你永远碰不到我，Js小游戏</title>
    <meta charset="utf-8">
    <meta http-equiv="imagetoolbar" content="no">
    <style type="text/css">
        body {cursor:crosshair;margin:0; padding:0; position:absolute; overflow:hidden; background:#000; left:0; top:0; width:100%; height:100%;}
        img {position:absolute;left:-1000;}
        #rt{
            text-decoration: none;
            position: absolute;
            color:pink;
            font-size: 25px;
            bottom: 5%;
            right: 10%;
        }
    </style>
</head>
<body>
<div id="CENTER" style="position:absolute;left:50%;top:50%"></div>
<div id="IMG" style="VISIBILITY: hidden">
    <img src="img/small.jpg">
    <img src="img/big.jpg">
</div>
<a href="success.jsp" id="rt">返回</a>
<script type="text/javascript">
    document.onselectstart = new Function("return false");
    object = new Array();
    N  = 0;
    xm = 1;
    ym = 1;
    nx = 0;
    ny = 0;
    S  = 0;
    Ni = 0;
    function CObj(N,x,y,img){
        o = document.createElement("img");
        o.src = img.src;
        document.getElementById("CENTER").appendChild(o);
        this.obj  = o.style;
        this.x  = x;
        this.y  = y;
        this.x0 = x;
        this.y0 = y;
        this.w  = img.width  / 2;
        this.h  = img.height / 2;
        this.anim = function () {
            with(this){
                dx = xm - x;
                dy = ym - y;
                d = Math.sqrt(dx * dx + dy * dy);
                x = x - S / d * (dx / d) + (x0 - x) * .15;
                y = y - S / d * (dy / d) + (y0 - y) * .15;
                obj.left   = x - w;
                obj.top    = y - w;
            }
        }
    }
    function run(){
        for(i in object)object[i].anim();
        setTimeout(run, 16);
    }
    document.onmousemove = function(e){
        if (window.event) e = window.event;
        xm = -nx * .5 + (e.x || e.clientX);
        ym = -ny * .5 + (e.y || e.clientY);
    }
    function resize(){
        nx = document.body.offsetWidth;
        ny = document.body.offsetHeight;
        S  = ny * 20;
    }
    onresize = resize;
    onload = function() {
        img = document.getElementById("IMG").getElementsByTagName("img");
        resize();
        Ni=0;
        for(var i=-5;i<=5;i++){
            for(var j=-4;j<=4;j++){
                x = i * nx / 12;
                y = j * ny / 10;
                object[Ni] = new CObj(Ni++,x,y,img[Ni%img.length]);
            }
        }
        run();
    }
</script>
</body>
</html>