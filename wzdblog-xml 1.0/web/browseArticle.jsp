<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="com.wzd.bean.Article" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/2/13
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Article</title>
  <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
  <link rel="stylesheet" type="text/css" href="common/css/browseArticle.css">
</head>
<body>
<div class="wzd-header" id="wzd-header">
  <div class="wzd-header-menu" id="wzd-header-menu">
    <div class="menu">
      <div class="logo">WZD</div>
      <ul>
        <li><a href="404.jsp">留言</a></li>
        <li><a href="404.jsp">关于我</a></li>
        <li><a href="404.jsp">日记</a></li>
        <li><a href="article_queryForPage.action">文章</a></li>
        <li><a href="article_home.action">首页</a></li>
      </ul>
    </div>
  </div>
</div>
<%
  Article article = (Article) request.getAttribute("article");
%>
<div class="wzd-article">
  <div class="article">
    <div class="title"><h2><%=article.getTitle()%></h2></div>
    <div class="inf">
      <span class="author">作者:<span class="name"><%=article.getAuthor()%></span></span>
      <span class="date">时间:<span class="name"><%=article.getDate()%></span></span>
      <span class="views">浏览量:<span class="name"><%=article.getViews()%></span></span>
    </div>
    <div class="context">
      <%=article.getContent()%>
    </div>
  </div>
  <div class="articleComment">
    <!-- UY BEGIN -->
    <div id="uyan_frame"></div>
    <script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js?uid=2085007"></script>
    <!-- UY END -->
  </div>
</div>
<div class="footer"></div>
</body>
</html>
