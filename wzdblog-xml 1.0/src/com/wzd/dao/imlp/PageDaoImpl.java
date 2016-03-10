package com.wzd.dao.imlp;

import com.wzd.bean.PageBean;
import com.wzd.dao.PageDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

/**
 * Created by admin on 2016/2/22.
 */
public class PageDaoImpl implements PageDao {
    private SessionFactory sessionFactory;
    @Override
    public PageBean queryForPage(String hql, int pag, int pageSize) {
        pag = (pag<=0)?1:pag;  //如果当前页数等于或者小于0,则让它等于0,否则不变
        int allRow = getAllRowCount(hql); //取总的记录数
        int totalPage = allRow / pageSize; //计算出总的页数
        totalPage = (allRow%pageSize==0)?totalPage:totalPage + 1; //如果页面数是偶数则计算的总页数刚好相等,否者加1
        System.out.println("-->"+totalPage);
        pag = (pag>totalPage)?totalPage:pag; //如果当前页数大于总页数,则让它等于总页数,否则不变
        int offset = pageSize*(pag - 1); //计算每一页从哪开始

        Session session = sessionFactory.getCurrentSession();
        Query query =  session.createQuery(hql);
        query.setFirstResult(offset);
        query.setMaxResults(pageSize);
        List pageList = query.list();

        PageBean pageBean = new PageBean();
        pageBean.setPageList(pageList);
        pageBean.setPageSize(pageSize);
        pageBean.setAllRow(allRow);
        pageBean.setCurrentPage(pag);
        pageBean.setTotalPage(totalPage);
        return pageBean;
    }

    @Override
    public int getAllRowCount(String hql) {
        Session session = sessionFactory.getCurrentSession();
        Query query =  session.createQuery(hql);
        return query.list().size();
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
