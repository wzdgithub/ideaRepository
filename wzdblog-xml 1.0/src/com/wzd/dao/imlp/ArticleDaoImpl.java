package com.wzd.dao.imlp;

import com.wzd.bean.Article;
import com.wzd.dao.ArticleDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import java.util.List;

/**
 * Created by admin on 2016/2/15.
 */
public class ArticleDaoImpl implements ArticleDao {
    private SessionFactory sf;
    public void addArticle(Article article){
        Session session = sf.getCurrentSession();
        session.save(article);
    }
    @Override
    public Article selectArticle(int id) {
        Session session = sf.getCurrentSession();
        Article article = session.get(Article.class,id);
        if(article != null)
            return article;
        else
            return null;
    }
    public List<Article> newArticle(int length){
        Session session = sf.getCurrentSession();
        String hql = "from Article as article order by article.date desc";
        Query query = session.createQuery(hql);
        query.setFirstResult(0);
        query.setMaxResults(length);
        List<Article> articles = query.list();
        if(articles != null)
            return articles;
        else
            return null;
    }
    public SessionFactory getSf() {
        return sf;
    }

    public void setSf(SessionFactory sf) {
        this.sf = sf;
    }

}
