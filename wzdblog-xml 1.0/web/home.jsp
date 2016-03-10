<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.util.List" %>
<%@ page import="com.wzd.bean.Article" %>
<%@ page import="com.wzd.service.ArticleService" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/2/4
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>WZD Blog</title>
  <meta name="uyan_auth" content="f1300732e3" />
  <link rel="stylesheet" type="text/css" href="common/css/home.css">
</head>
<%
  List<Article> newArticle = (List<Article>) request.getAttribute("newArticle");
%>
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
  <div id="large-header" class="large-header">
    <canvas id="demo-canvas"></canvas>
  </div>
</div>
<div class="wzd-context">
  <div class="context clearfix">
    <div class="left">
      <div class="title"><span>最新文章</span></div>
      <%for(Article a:newArticle){%>
      <div class="article">
        <img class="article-img" src="<%=a.getImg()%>"/>
        <div class="article-introduction">
          <div class="article-title"><a href="article_selectArticle.action?id=<%=a.getId()%>"><%=a.getTitle()%></a></div>
          <div class="introduction">
            <a href="article_selectArticle.action?id=<%=a.getId()%>"><%=a.getIntroduction()%></a>
          </div>
          <div class="article-inf">
            <span class="author">作者:<span><%=a.getAuthor()%></span></span>
            <span class="date">时间:<span><%=a.getDate()%></span></span>
            <span class="views">浏览量:<span><%=a.getViews()%></span></span>
          </div>
        </div>
      </div>
      <%}%>
    </div>
    <div class="right">
      <div class="weixin">
        <img src="common/img/weixin.JPG" alt="加微信">
      </div>
    </div>
  </div>
</div>
<div class="footer"></div>
</body>
<script src="common/js/TweenLite.min.js"></script>
<script src="common/js/EasePack.min.js"></script>
<script src="common/js/demo-1.js"></script>
</html>
