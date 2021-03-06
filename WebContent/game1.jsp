<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>拼图游戏</title>
    <style>
        *{margin:0;padding:0;}
        .shell{margin:20px auto;position:relative;width:499px;height:299px;border:#666 10px solid;background:#FAFAFA;}
        .shell p{position:absolute;width:99px;height:99px;background:url(img/pintu.jpg) no-repeat 0 0;cursor:pointer;}
        .bar{margin:0 auto;width:499px;font:600 16px/1.8em Verdana;}
        .bar em{font-style:normal;margin-right:10px;color:#F00;}
        #showall{font:12px/1.8em Verdana;cursor:pointer;}
        #show{background:url(img/pintu.jpg) no-repeat 0 0;}
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
<div id="shell" class="shell"></div>
<div id="bar" class="bar">
    <b>计时:</b><em id="times">00:00</em>
    <b>步数:</b><em id="steps">0</em>
    <select id="hard">
        <option value="1">入门模式</option>
        <option value="7">简单模式</option>
        <option value="81">一般模式</option>
        <option value="201">困难模式</option>
        <option value="501">超难模式</option>
    </select>
    <b id="showall">查看原图</b>
</div>
<div id="show" class="shell" style="display:none;"></div>
<a href="game.jsp" id="rt">返回</a>
<script type="text/javascript">
    speller={
        init:function(n){
            this.hard=n||5;
            this.step=this.useTime=0;
            this.blank=14;
            this.createGrid();
            clearInterval(this.timer);
            this.timer=setInterval(function(){
                speller.useTime++;
                document.getElementById("times").innerHTML=('0'+parseInt(speller.useTime/60)).slice(-2)+':'+('0'+speller.useTime%60).slice(-2);
            },1000);
        }
        ,createGrid:function(){
            var X=function(n){return n%5*100;},Y=function(n){return parseInt(n/5)*100;};
            for(var i=0,html=[];i<15;i++){
                html.push('<p onclick="speller.move(this);" id="'+i+'" class="'+i+'"  style="left:'+X(i)+'px;top:'+Y(i)+'px;background-position:-'+X(i)+'px -'+Y(i)+'px;"></p>');
            }
            document.getElementById("shell").innerHTML=html.join('');
            this.random();
        }
        ,random:function(p){
            var ps=document.getElementById("shell").getElementsByTagName("P"),l=ps.length,me=this;
            ps[this.blank].style.display="none";
            var en=function(n){
                var arr=[];
                if(n<14 && n%5!=4){arr.push(n+1);}
                if(n>0 && n%5!=0){arr.push(n-1);}
                if(n>4){arr.push(n-5);}
                if(n<10){arr.push(n+5);}
                return arr[parseInt(Math.random()*arr.length)]*1;
            }
            var getp=function(n){for(var i=0;i<l;i++){if(ps[i].className==n){return ps[i];}}}
            for(var i=0;i<me.hard;i++){
                this.move2(getp(en(this.blank*1)));
            }
        }
        ,move2:function(p){
            var pos=p.className*1,POS=this.blank*1,abs=Math.abs(pos-POS),max=pos>POS?pos:POS;
            p.style.top=parseInt(POS/5)*100+"px";
            p.style.left=POS%5*100+"px";
            p.className=POS;this.blank=pos;
        }
        ,move:function(p){
            var pos=p.className*1,POS=this.blank*1,abs=Math.abs(pos-POS),max=pos>POS?pos:POS;
            if(abs==5){
                this.fx(parseInt(pos/5)*100,parseInt(POS/5)*100,function(x){p.style.top=x+"px";},function(){},100,.4)
            }else if(abs==1&&max%5!=0){
                this.fx(pos%5*100,POS%5*100,function(x){p.style.left=x+"px";},function(){},100,.4)
            }else{return;}
            p.className=POS;this.blank=pos;document.getElementById("steps").innerHTML=++this.step;
            if(this.check()){
                var me=this,last=document.getElementById("shell").getElementsByTagName("P")[14];
                last.style.display="block";
                this.blank=10000;
                this.fx(0,100,function(x){last.style.opacity=x/100;last.style.filter="alpha(opacity="+x+")";},function(){alert('真联盟，可以再玩一次!');me.init();},200,1)
            }
        }
        ,check:function(){
            var p=document.getElementById("shell").getElementsByTagName("P");
            for(var i=0,l=p.length;i<l;i++){if(p[i].className!=p[i].id){return false;}}
            return true;
        }
        ,fx:function(f,t,fn,end,tm,pow){
            var D=Date,d=new D,e,c=tm||240,pow=pow||2;
            return e=setInterval(function (){
                var z=Math.min(1,(new D-d)/c);
                (false===fn(+f+(t-f)*Math.pow(z,pow),z)||z==1) && end && end(clearTimeout(e));
            },10);
        }
    }
    speller.init(document.getElementById("hard").value);
    document.getElementById("showall").onclick=function(){
        document.getElementById("show").style.display=document.getElementById("show").style.display=="none"?"":"none";
    }
    document.getElementById("hard").onchange=function(){
        speller.init(this.value);
    }
    document.all&&document.execCommand("BackgroundImageCache", false, true);
</script>
</body>
</html>
