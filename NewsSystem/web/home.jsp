<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.bean.News"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
	<link rel="stylesheet" type="text/css" href="common/css/home.css">
	<script src="common/js/jquery.js"></script>
	<script src="common/js/home.js"></script>
  </head>
  <%
	  List<News> military = (List<News>)request.getAttribute("military"); //军事
	  List<News> social = (List<News>)request.getAttribute("social"); //社会
	  List<News> economic = (List<News>)request.getAttribute("economic"); //经济
	  List<News> technology = (List<News>)request.getAttribute("technology"); //科技
	  List<News> sports = (List<News>)request.getAttribute("sports"); // 体育
	  List<News> entertain = (List<News>)request.getAttribute("entertain"); //娱乐
  %>
  <body>
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
    <div class="viwepager">    
    	<div class="viwepager_img">
			<img src="common/picture/1.jpg"/>
			<img src="common/picture/2.jpg"/>
			<img src="common/picture/3.jpg"/>
			<img src="common/picture/4.jpg"/>
		</div>
    </div>
    <div class="content clearfix">
    	<div class="content_part1">
    		<div class="part_header"><span>军事</span><span class="more"><a href="">more</a></span></div>
    		<%if(military.size() != 0){%>
    		<div class="part_content">
    			<table>
    				<%for(News news:military){%>
    				<tr><td><a href=""><%=news.getTitle() %></a></td></tr>
    				<%} %>
    			</table>
    		</div>
    		<%}%>
    	</div>
    	<div class="content_part2">
    		<div class="part_header"><span>社会</span><span class="more"><a href="">more</a></span></div>
    		<%if(social.size() != 0){%>
    		<div class="part_content">
    			<table>
    				<%for(News news:social){%>
    				<tr><td><a href="NewsServlet?id=<%=news.getId() %>"><%=news.getTitle() %></a></td></tr>
    				<%} %>
    			</table>
    		</div>
    		<%}%>
    	</div>
    	<div class="content_part3">
    		<div class="part_header"><span>财经</span><span class="more"><a href="">more</a></span></div>
    		<%if(economic.size() != 0){%>
    		<div class="part_content">
    			<table>
    				<%for(News news:economic){%>
    				<tr><td><a href=""><%=news.getTitle() %></a></td></tr>
    				<%} %>
    			</table>
    		</div>
    		<%}%>
    	</div>
    	<div class="content_part4">
    		<div class="part_header"><span>科技</span><span class="more"><a href="">more</a></span></div>
    		<%if(technology.size() != 0){%>
    		<div class="part_content">
    			<table>
    				<%for(News news:technology){%>
    				<tr><td><a href=""><%=news.getTitle() %></a></td></tr>
    				<%} %>
    			</table>
    		</div>
    		<%}%>
    	</div>
    	<div class="content_part5">
    		<div class="part_header"><span>体育</span><span class="more"><a href="">more</a></span></div>
    		<%if(sports.size() != 0){%>
    		<div class="part_content">
    			<table>
    				<%for(News news:sports){%>
    				<tr><td><a href=""><%=news.getTitle() %></a></td></tr>
    				<%} %>
    			</table>
    		</div>
    		<%}%>
    	</div>
    	<div class="content_part6">
    		<div class="part_header"><span>娱乐</span><span class="more"><a href="">more</a></span></div>
    		<%if(entertain.size() != 0){%>
    		<div class="part_content">
    			<table>
    				<%for(News news:entertain){%>
    				<tr><td><a href=""><%=news.getTitle() %></a></td></tr>
    				<%}%>
    			</table>
    		</div>
    		<%}%>
    	</div>
    </div>
    
    <div class="footer"></div>
  </body>
</html>
