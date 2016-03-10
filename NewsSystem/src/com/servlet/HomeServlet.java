package com.servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.News;
import com.dao.NewsDao;
import com.dao.impl.NewsDaoImpl;

public class HomeServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        NewsDao newsDao = new NewsDaoImpl();
        List<News> military = newsDao.selectNewsByCategory("军事", 0, 8);
        req.setAttribute("military", military);
        List<News> social = newsDao.selectNewsByCategory("社会", 0, 8);
        req.setAttribute("social", social);
        List<News> economic = newsDao.selectNewsByCategory("财经", 0, 8);
        req.setAttribute("economic", economic);
        List<News> technology = newsDao.selectNewsByCategory("科技", 0, 8);
        req.setAttribute("technology", technology);
        List<News> sports = newsDao.selectNewsByCategory("体育", 0, 8);
        req.setAttribute("sports", sports);
        List<News> entertain = newsDao.selectNewsByCategory("娱乐", 0, 8);
        req.setAttribute("entertain", entertain);
        req.getRequestDispatcher("home.jsp").forward(req, resp);
    }
}
