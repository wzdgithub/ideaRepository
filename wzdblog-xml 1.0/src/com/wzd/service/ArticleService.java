package com.wzd.service;

import com.wzd.bean.Article;
import com.wzd.bean.PageBean;
import com.wzd.dao.ArticleDao;
import com.wzd.dao.PageDao;

import java.util.List;

/**
 * Created by admin on 2016/2/20.
 */
public class ArticleService {
    private ArticleDao ad;
    private PageDao pd;
    public void addArticle(Article article){
        ad.addArticle(article);
    }
    public Article selectArticle(int id) {
        return ad.selectArticle(id);
    }

    public List<Article> newArticle(int length){
        return ad.newArticle(length);
    }

    public PageBean queryForPage(String hql, int pag, int pageSize) {
        return pd.queryForPage(hql,pag,pageSize);
    }

    public ArticleDao getAd() {
        return ad;
    }

    public void setAd(ArticleDao ad) {
        this.ad = ad;
    }

    public PageDao getPd() {
        return pd;
    }

    public void setPd(PageDao pd) {
        this.pd = pd;
    }
}
