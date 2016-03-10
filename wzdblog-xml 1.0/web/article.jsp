<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="com.wzd.bean.PageBean" %>
<%@ page import="org.hibernate.annotations.SourceType" %>
<%@ page import="com.wzd.bean.Article" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/2/22
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="common/css/article.css">
</head>
<%
  PageBean pageBean = (PageBean) request.getAttribute("pageBean");
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
</div>
<div class="context">
  <div class="article-list">
    <%
      List<Article> articles = pageBean.getPageList();
      for(Article a:articles){
    %>
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
    <div class="page">
      <span><a href="article_queryForPage.action?pag=1">首页</a></span>
      <span><a href="article_queryForPage.action?pag=<%=pageBean.getCurrentPage() - 1%>">上一页</a></span>
      <span><%=pageBean.getCurrentPage()%>/<%=pageBean.getTotalPage()%></span>
      <span><a href="article_queryForPage.action?pag=<%=pageBean.getCurrentPage() + 1%>">下一页</a></span>
      <span><a href="article_queryForPage.action?pag=<%=pageBean.getTotalPage()%>">尾页</a></span>
    </div>
  </div>
</div>
<div class="footer"></div>
</body>
</html>
