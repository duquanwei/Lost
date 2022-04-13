<%--
  Created by IntelliJ IDEA.
  User: cdwh1
  Date: 2022/3/12
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

%>
<div id="sumbit" >
    <form method="post" action="AddServlet">

        <input name="address" type="text" placeholder="请输入丢失大概地点"/></br>
        <input name="goods" type="text" placeholder="请输入丢失物品"/></br>
        <input name="tell" type="text" placeholder="请输入联系方式"/></br>
        <textarea name="describe" placeholder="请描述物品具体特征"></textarea><br>
        <input name="time" type="datetime-local"/></br>
        <input name="Image" type="image" placeholder="请添加图片" /></br>
        <select name="type">
            <option value="寻物启事">寻物启事</option>
            <option value="失物招领">失物招领</option>
        </select></br>


        <input name="add" value="submit" type="submit"/>
        <input name="reset" value="reset" type="reset"/>

    </form>

</div>
</body>
</html>
