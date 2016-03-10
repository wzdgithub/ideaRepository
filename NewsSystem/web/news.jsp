<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.bean.News"%>
<%@page import="com.bean.Comment"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>My JSP 'news.jsp' starting page</title>
	<link rel="stylesheet" type="text/css" href="common/css/home.css">
	<link rel="stylesheet" type="text/css" href="common/css/news.css">
	<script type="text/javascript" charset="utf-8" src="common/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="common/ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="common/ueditor/lang/zh-cn/zh-cn.js"></script>
  </head>
  
  <body>
    <%
    	News news = (News)request.getAttribute("news");
    	List<Comment> comments = (List<Comment>)request.getAttribute("comments");
    %>
    <div class="header">
    	<div class="header_center">
	    	<div class="header_logo">
	    		<a href="HomeServlet">新闻管理系统</a>
	    	</div>
	    	<div class="header_menu">
	    		<ul>
	    			<a href=""><li>军事</li></a>
	    			<a href=""><li>社会</li></a>
	    			<a href=""><li>财经</li></a>
	    			<a href=""><li>科技</li></a>
	    			<a href=""><li>体育</li></a>
	    			<a href=""><li>娱乐</li></a>
	    		</ul>
	    	</div>
	    	<div class="header_search">
	    		<form>
	    			<input type="text" class="search_title" name="title"/>
	    			<input type="submit" class="search_submit" value="搜索"/>
	    		</form>
	    	</div>
	    	<div class="register"><a href="">注册</a></div>
	    	<div class="login"><a href="">登录</a></div>
    	</div>
    </div>
    <div class="content">
    	<div class="news_title">
    	<%=news.getTitle() %>
    	</div>
    	<div class="news_inf">
    		<span>作者:<%=news.getAuthor() %></span><span>时间:<%=news.getDate() %></span>
    	</div>
    	<div class="news_content">
    	<%=news.getContent() %>
    	</div>
    </div>
    <div class="comments">
    	<div class="comment_editor">
    		<form action="">
    			<script id="editor" type="text/plain" style="width:960px;height:100px;"></script>
    			<input type="submit" value="评论"/>
    		</form>
    	</div>
    	<div class="comments_content">
    		<% for(Comment comment:comments){ %>
    		<div class="comment clearfix">
    			<img src=""/>
    			<div class="comment_inf">
    				<div class="comment_title">
    					<span><%=comment.getUserid() %></span><span class="comment_date"><%=comment.getDate() %></span>
    				</div>
    				<div class="comment_content">
    				<%=comment.getContent() %>
    				</div>
    			</div>
    		</div>
    		<%}%>
    	</div>
    </div>
  </body>
  <script type="text/javascript">
  	var ue = UE.getEditor('editor',{
  		toolbars: [
    		['forecolor', 'backcolor', 'emotion', 'undo', 'redo', 'bold']
		]
  	});
  	
  </script>
</html>
