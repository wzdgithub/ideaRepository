package com.wzd.dao;

import com.wzd.bean.PageBean;

/**
 * Created by admin on 2016/2/22.
 */
public interface PageDao {
    PageBean queryForPage(String hql,int offset,int length);
    int getAllRowCount(String hql);
}
