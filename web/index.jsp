<%@ page import="java.util.List" %>
<%@ page import="com.domain.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

  <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

  <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="./css/a.css">
  <link rel="stylesheet" href="https://at.alicdn.com/t/font_3279820_pu0agzrtdgh.css"/>
</head>
<body>
<div id="header">
  <div class="header">
    <div class="header_left">
      <div> <span>失物招领</span></div>

    </div>
    <div class="header_right">
      <div>
        <a href="index.jsp">
          首页
        </a>
      </div>
      <div>
        <a href="add_content.jsp">
          失物招领信息
        </a>
        <div id="top_nav">
          <ul>
            <li style="list-style-type:none;">
              <a href="found.jsp">
                <span>寻物信息</span>
              </a>
            </li>

          </ul>
        </div>
      </div>
      <div>
        <a href="guanyuwomen.html">
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
              <a href="">
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

<!-- //搜索栏 -->
<form method="get" action="SearchServlet">
  <div class="log">
    <div class="log_left">
      <h1 align="center">查找相关信息</h1>
      <h5>More then 2022 information listed here.</h5>
    </div>

    <div class="log_1">
      <input type="text" class="form-control" id="exampleInputEmail3" placeholder="例如:钱包" name="name" required="required">
    </div>
    <div class="log_2">
      <input type="text" class="form-control" id="exampleInputEmail4" placeholder="具体区域" name="address" required="required">
    </div>
    <div class="log_3">
      <select class="form-control" name="type">

        <option value="寻物启事">寻物启事</option>
        <option value="失物招领">失物招领</option>
      </select>
    </div>
    <div class="log_4">
      <input type="submit" class="btn btn-primary btn-lg active" role="button" value="Search">
    </div>
  </div>
</form>
<!-- 最右侧 -->
<div id="sidebar">
  <div id="sidebar1">
    <a href="changjianwenti.html">
      <i><img src="./picture/fankui.png" width="35px"></i><br>
      <span>常见问题</span>
    </a>
  </div>
  <div id="sidebar2">
    <a href="lianxiwomen.jsp">
      <i><img src="./picture/women.png" width="35px"></i><br>
      <span>联系我们</span>
    </a>
  </div>
  <div id="sidebar3">
    <a href="gerenzhongxin.html">
      <i><img src="./picture/wode.png" width="35px"></i><br>
      <span>个人中心</span>
    </a>
  </div>
</div>

<!-- 物品显示列表 -->
<div class="font">
  <h1 align="center" style="">信息列表</h1>
  <h3 align="center"> Here's the most information listed on the website.</h3>
</div>


<div id="among">
  <%
    List<Goods> goods1= (List<Goods>) request.getAttribute("goodsList");
    for(Goods g1 : goods1){
  %>
  <div class="among_1">

    <div >
      <img src="./picture/2.webp" width="100" height="100">
    </div>

    <div>
      <font><%=g1.getType()%></font>
    </div>
    <div>
      <a href="" style="text-decoration: none;">
        <li style="list-style-type:none;"><%=g1.getAddress()%></li>
      </a>

    </div>
    <div>
      联系人:<%=g1.getName()%>

    </div>
    <div style="width: 200px">
      <i>
        <img src="./picture/shuju.png" width="20px">
        <%=g1.getDescribe()%>
      </i>
    </div>
    <div><%=g1.getDate()%></div>
    <div>
      <a href="" style="text-decoration: none;">
        <li style="list-style-type:none;"><%=g1.getTell()%></li>
      </a>
    </div>
  </div>
  <%}%>


  <div id="button1">
    <a href="ShowServlet?current=${currentPage-1}" aria-label="Previous">Previous</a>
    <a href="ShowServlet?current=${currentPage+1}" aria-label="Next">Next</a>
  </div>
</div>

</div>

<div id="bottom">
  <div id="bottom1"></div>
  <div id="bottom2">
    我们将精心致力于您的需要，为您解除遗失物品无从寻找的烦恼、为您减轻与亲人失散的痛苦……声明：本网站属于公益性网站，不收取任何费用；<br>
    本网站不负责协调双方矛盾与纠纷；如遇到敲诈与欺骗行为，应及时与警方联系。
    真心希望我们的团队、我们的招领平台 —— 服务于社会、服务于大众、服务于您！
  </div>
</div>
</body>
</html>