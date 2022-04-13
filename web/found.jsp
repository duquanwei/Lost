<%@ page import="com.domain.Goods" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: aaa
  Date: 2022/4/12
  Time: 16:41
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
   <%
    List<Goods> goods1=(List<Goods>) request.getAttribute("goodsList");
       for(Goods i : goods1){
   %>
    <div class="among_1">

        <div>
            <img src="./picture/2.webp" width="100" height="100">
        </div>

        <div>
            <font><%=i.getType()%></font>
        </div>
        <div>
            <a href="" style="text-decoration: none;">
                <li style="list-style-type:none;"></li>
            </a>

        </div>
        <div>
            联系人:<%=i.getName()%>

        </div>
        <div style="width: 200px">
            <i>
                <img src="./picture/shuju.png" width="20px">
                  <%=i.getDescribe()%>
            </i>
        </div>
        <div><%=i.getDate()%></div>
        <div>
            <a href="" style="text-decoration: none;">
                <li style="list-style-type:none;"><%=i.getTell()%> </li>
            </a>
        </div>
    </div>

</div>
<%}%>
<div class="among_7">
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <li>
                <a href="ShowServlet?current=${currentPage-1}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
                <a href="ShowServlet?current=${currentPage+1}" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>
</div>
<div id="right">
    <div class="right1">
        <span>搜索关键字</span>
        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="例如:钱包">
    </div>
    <div class="right2">
        <span>
           具体区域
        </span>
        <input type="email" class="form-control" id="exampleInputEmail2" placeholder="例如:图书馆">
    </div>
    <div class="right3">
        <span>类型</span>
        <select class="form-control">
            <option>请选择类别</option>
            <option>寻物启事</option>
            <option>失物招领</option>
        </select>
    </div>
    <div class="right4">
        <button type="button" class="btn btn-primary">Search</button>
    </div>
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
        width: 700px;
        height:1100px;
        border: 1px solid red;
        margin-left: 100px;
        margin-top: 100px;
        float: left;
    }
    #right{
        width: 400px;
        height: 500px;
        border: 1px solid green;
        float: right;
        margin-top: 100px;
        margin-right: 50px;
    }
    .among_1{
        width: 650px;
        height: 150px;
        border:1px solid darkorange;
        margin: 0 auto;
        margin-top: 50px;
    }
    .among_1>div:nth-child(1)
    {
        float: left;
        border: 1px solid green;
        height: 100px;
        width: 100px;
        margin: 20px 0  0 20px;
    }
    .among_1>div:nth-child(2){
        float: left;
        background: #1b6d85;
        font-size: 15px;
        width: 50px;
        height: 20px;
        margin-top: 20px;
        color: #9acfea;
        border-radius: 5px;
    }
    .among_1>div:nth-child(3){
        float: left;

        font-size: 15px;
        width: 50px;
        height: 20px;
        margin-top: 20px;
        margin-left: 10px;
        color: #0f0f0f;
        border-radius: 5px;
        font-weight: bold;
    }
    .among_1>div:nth-child(4)
    {
        float: left;
        border: #1b6d85 1px solid;
        width: 100px;
        height: 30px;
        margin: 50px 0 0 -80px;
    }
    .among_1>div:nth-child(5)
    {
        float: left;
        border: #1b6d85 1px solid;
        width: 100px;
        height: 30px;
        margin: 100px 0 0 -100px;
    }
    .among_1>div:nth-child(6)
    {
        float: right;
        border: #1b6d85 1px solid;
        width: 100px;
        height: 30px;
        margin: 30px 20px 0 0;
    }
    .among_1>div:nth-child(7)
    {
        float: right;
        border: #1b6d85 1px solid;
        width: 100px;
        height: 30px;
        margin: 70px -100px 0 0;
    }
    .among_7{
        width: 550px;
        height: 50px;
        border:1px solid darkorange;
        margin: 0 auto;
        margin-top: 20px;
        padding-left: 140px;

    }
    .right1{
        width:300px;
        height:80px;
        border: 1px solid gold;
        margin: 0 auto;
        margin-top: 50px;
        padding-top: 50px;
    }
    .right2{
        width:300px;
        height:80px;
        border: 1px solid gold;
        margin: 0 auto;
        margin-top: 50px;
        padding-top: 50px;
    }
    .right3{
        width:300px;
        height:80px;
        border: 1px solid gold;
        margin: 0 auto;
        margin-top: 50px;
        padding-top: 30px;
    }
    .right4{
        width:300px;
        height:40px;
        border: 1px solid gold;
        margin: 0 auto;
        margin-top: 30px;
    }
    .right4>button{
        margin-left: 70px;
        width: 170px;
        height: 30px;
        background: #0b59ea;
    }
    #right>div:nth-child(1)>span{
        font-weight: bold;
        font-size: 15px;
        float: left;
        margin-left: 100px;
    }
    #right>div:nth-child(2)>span{
        font-weight: bold;
        font-size: 15px;
        float: left;
        margin-left: 100px;
    }
    #right>div:nth-child(3)>span{
        font-weight: bold;
        font-size: 15px;
        float: left;
        margin-left: 100px;
    }
</style>
</html>
