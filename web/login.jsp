
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css" integrity="sha384-HSMxcRTRx<brnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="./bootstrap/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
<body>
<header> Welcome to the lost and found </header>
   <div class="logins">
       <form action="LoginServlet" method="post">
           用户名:<input type="text" name="username" ><br><br>
           密&nbsp;&nbsp;&nbsp;码:<input type="password" name="password"><br><br>
           <input type="submit" value="登录" >
       </form>
   </div>
</body>
<style>


    header{
        width: 100%;/*这是设置宽,100%的意思是撑满屏幕*/
        height: 100px;/*这是设置高*/
        background-color: black;/*这是header标签的背景颜色*/
        color: white;/*这是字体颜色*/
        text-align:center;/*这是文字居中*/
        line-height: 35px;
    }
    input[type="text"],input[type="password"]{
        line-height: 48px;
        margin-top: 10px;
        width: 50%;
        border-radius: 30px;
        border: #2aabd2 1px solid;

    }
    input[type="submit"]{
        width: 10%;
        height: 5%;
        margin-top: 30px;
        border: #2b669a 1px solid;
        border-radius: 30px;
       text-align: center;
        background: #286090;
        transform: translateX(250px);
    }
</style>


</html>
