<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/2/23
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admin</title>
  <link rel="stylesheet" href="css/admin.css">
</head>
<body>
<div class="admin-header">
  <ul>
    <li>写文章</li>
    <li>写日记</li>
  </ul>
</div>
<div class="admin-content">
  <form action="article_addArticle.action" method="post" enctype="multipart/form-data">
    <label>标题:</label><input type="text" name="title"><br/>
    <label>作者:</label><input type="text" name="author"><br/>
    <label>简介图片:</label><input type="file" name="upload"><br/>
    <label>简介</label><br/>
    <textarea name="introduction"></textarea><br/>
    <label>内容</label><br/>
    <script id="container" name="content" type="text/plain"></script>
    <input type="submit" value="提交">
  </form>
  <!-- 加载编辑器的容器 -->

  <!-- 配置文件 -->
  <script type="text/javascript" src="ueditor/ueditor.config.js"></script>
  <!-- 编辑器源码文件 -->
  <script type="text/javascript" src="ueditor/ueditor.all.js"></script>
  <!-- 实例化编辑器 -->
  <script type="text/javascript">
    var ue = UE.getEditor('container');
  </script>
</div>
</body>
</html>
