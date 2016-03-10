package com.servlet;

import com.bean.Comment;
import com.bean.News;
import com.dao.CommentDao;
import com.dao.NewsDao;
import com.dao.impl.CommentDaoImpl;
import com.dao.impl.NewsDaoImpl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewsServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(req.getParameter("id"));
		NewsDao newsDao = new NewsDaoImpl();
		News news = newsDao.selectNews(id);
		req.setAttribute("news", news);
		System.out.println();

		CommentDao commentDao = new CommentDaoImpl();
		List<Comment> comments = commentDao.selectCommentAndNews(id);
		req.setAttribute("comments", comments);

		req.getRequestDispatcher("news.jsp").forward(req, resp);
	}
	
}
