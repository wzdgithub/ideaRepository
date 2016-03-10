package com.wzd.dao;

import com.wzd.bean.Article;

import java.util.List;

/**
 * Created by admin on 2016/2/15.
 */
public interface ArticleDao {
    void addArticle(Article article);
    Article selectArticle(int id);
    List<Article> newArticle(int length);
}
