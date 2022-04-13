<%--
  Created by IntelliJ IDEA.
  User: aaa
  Date: 2022/4/12
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>

</head>
<body>
<div id="header">
    <div class="header">
        <div class="header_left">
            <div> <span>失物招领</span></div>
            <div> <img src="./img.img_1.png"></div>
        </div>
        <div class="header_right">
            <div>
                <a href="">
                    首页
                </a>
            </div>
            <div>
                <a href="">
                    失物招领信息
                </a>
                <div id="top_nav">
                    <ul>
                        <li style="list-style-type:none;">
                            <a href="">
                                <span>寻物信息</span>
                            </a>
                        </li>
                        <li  style="list-style-type:none;">
                            <a href="">
                                <span>招领信息</span>
                            </a></li>
                    </ul>
                </div>
            </div>
            <div>
                <a href="">
                    关于我们
                </a>
            </div>

            <div>
                <a href="">
                    登记信息
                </a>
                <div id="last_nav">
                    <ul>
                        <li style="list-style-type:none;">
                            <a href="https://www.baidu.com" target="_blank">
                                <span>物品丢失登记</span>
                            </a>
                        </li>
                        <li  style="list-style-type:none;">
                            <a href="">
                                <span>拾获物品登记</span>
                            </a></li>
                    </ul>
                </div>
            </div>


        </div>
    </div>

</div>

<div id="among">
    <div class="div1">
        <span>联系我们</span>
    </div>
    <div class="div3">
        <span>热心网友留言</span>
    </div>
    <div class="div2">
    <span>
        网友留言：在科学校区食堂遗失了衣服包<br>
系统回复：请您在系统内按类别登记<br>
网友留言：平台您好，我想问一下钱包返还的比例是多少<br>
系统回复：目前通过平台很少，也许线下联系比较多。
    </span>

    </div>

</div>
<div id="right">
    <div class="right1">
        <span>欢迎给我们留言</span>
    </div>
    <div class="right2"><input type="text" class="form-control" id="exampleInputEmail1" placeholder="姓名"></div>
    <div class="right3"><input type="text" class="form-control" id="exampleInputEmail2" placeholder="联系电话"></div>
    <div class="right4"><textarea class="form-control" rows="6" placeholder="你的留言"></textarea></div>
    <div class="right5"><button type="submit" class="btn btn-primary px-5">提交信息</button></div>
</div>
</body>
<style>
    body,img,li,ul{
        padding: 0px;
    }
    #header{
        width: 100%;
        height: 300px;
        border: 1px solid #0f0f0f;

    }
    .header{
        width: 1200px;
        height:40px;
        border: red 1px solid;
        margin: 0px auto;


    }
    .header_left{
        width: 200px;
        height:40px;
        border: 1px solid green;
        float: left;
    }
    .header_left>div:first-child{
        float: left;
        padding: 8px 10px 8px 0px;
        color: #8492A6;
    }
    .header_right{
        width: 600px;
        height: 40px;
        border: #1b6d85 solid 1px;
        float: right;
    }
    .header_right>div:first-child{
        float: left;
        border: 1px solid rebeccapurple;
        height: 30px;
        width: 100px;
        margin-left: 60px;
    }
    .header_right>div:nth-child(2){
        float: left;
        border: 1px solid red;
        height: 30px;
        width: 100px;
        margin-left: 20px;

    }
    .header_right>div:nth-child(3){
        float: left;
        border: 1px solid yellow;
        height: 30px;
        width: 100px;
        margin-left: 20px;
    }
    .header_right>div:last-child{
        float: left;
        border: 1px solid green;
        height: 30px;
        width: 100px;
        margin-left: 20px;
    }
    #top_nav{
        position: absolute;
        top:45px ;
        background:#ffffff;
        border: 1px solid #cccccc;
        margin-left: -10px;
        display: none;
        z-index: 10;
    }
    #top_nav>ul>li{

        padding: 10px 20px;
    }
    #top_nav>ul>li>a{
        text-decoration: none;
    }
    #top_nav>ul>li>a>span{
        font-size:15px;
        color: #0f0f0f;
        padding: 0px 10px;
    }
    .header_right>div:nth-child(2):hover>#top_nav{
        display: block;
    }
    .header_right>div>a{
        text-decoration: none;
        color: #8492A6;
    }
    #last_nav{
        position: absolute;
        top:45px ;
        background:#ffffff;
        border: 1px solid #cccccc;
        display: none;
        margin-left: -10px;

    }
    #last_nav>ul>li{
        padding: 10px 20px;
    }
    #last_nav>ul>li>a{
        text-decoration: none;
    }

    #last_nav>ul>li>a>span{
        font-size: 15px;
        color: #0f0f0f;
        padding: 0px 10px;
    }
    .header_right>div:last-child:hover>#last_nav{
        display: block;
    }
    #among{
        border: 1px solid red;
        width: 500px;
        height: 500px;
        float: left;
        margin-top: 50px;
        margin-left: 50px;
    }
    .div1{
        font-size: 20px;
        font-weight: bold;
        border: 1px solid green;
        margin-left: 50px;
        margin-top: 50px;
    }
    .div2{
        border: 1px solid green;
        margin-left: 50px;
        margin-top: 50px;
        width: 400px;
        height: 200px;
        font-size: 15px;

    }
    .div3{
        border: 1px solid green;
        margin-left: 50px;
        margin-top: 50px;
        width: 400px;
        height: 80px;
        font-size: 20px;
        font-weight: bold;
    }


    #right{
        width:700px;
        height:800px;
        float: right;
        border: 1px solid green;
        margin-right: 50px;
        margin-top: 50px;

    }
    .right1{
        font-size: 20px;
        font-weight: bold;
        border: 1px solid green;
        margin-left: 50px;
        margin-top: 50px;
    }
    .right2{
        border: 1px solid green;
        margin-left: 50px;
        margin-top: 50px;
        width: 400px;
        height: 80px;
    }
    .right3{
        border: 1px solid green;
        margin-left: 50px;
        margin-top: 50px;
        width: 400px;
        height: 80px;
    }
    .right4{
        border: 1px solid green;
        margin-left: 50px;
        margin-top: 50px;
        width: 400px;
        height: 200px;
    }
    .right5{
        border: 1px solid green;
        margin-left: 50px;
        margin-top: 50px;
        width: 400px;
        height: 80px;
        padding-left: 80px;
    }
    .right5>button{
        width: 170px;
        height: 50px;
        background: #0b59ea;
    }
</style>
</html>
