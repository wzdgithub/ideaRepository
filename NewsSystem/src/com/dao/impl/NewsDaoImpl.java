package com.dao.impl;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.bean.News;
import com.dao.NewsDao;
import com.utils.SimpleJDBCUtil;

public class NewsDaoImpl implements NewsDao {

	@Override
	public boolean deleteNews(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insertNews(News news){
		String sql = "insert into t_news (title,content,pic,date,author,category,score) values (?,?,?,?,?,?,?)";
		int n = 0;
		try {
			n = SimpleJDBCUtil.executUpdate(sql, new Object[]{news.getTitle(),news.getContent(),news.getPic(),
					news.getDate(),news.getAuthor(),news.getCategory(),news.getScore()} );
		} catch (Exception e) {
		}
		if(n>0)
			return true;
		else
			return false;
	}

	@Override
	public List<News> selectAllNews() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<News> selectNewsByCategory(String category,int start,int end) {
		String sql = "select * from t_news where category=? order by date desc limit ?,? ";
		List<News> list = new ArrayList<News>();
		try {
			ResultSet resultSet = SimpleJDBCUtil.executQuery(sql, new Object[]{category,start,end});
			while(resultSet.next()){
				News news = new News();
				news.setId(resultSet.getInt(1));
				news.setTitle(resultSet.getString(2));
				news.setContent(resultSet.getString(3));
				news.setPic(resultSet.getString(4));
				news.setDate(resultSet.getDate(5));
				news.setAuthor(resultSet.getString(6));
				news.setCategory(resultSet.getString(7));
				news.setScore(resultSet.getInt(8));
				list.add(news);
			}
		} catch (Exception e) {
		}
		return list;
	}

	@Override
	public List<News> selectNewsByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public News selectNews(int id) {
		String sql = "select * from t_news where id = ?";
		News news = new News();
		try {
			ResultSet resultSet = SimpleJDBCUtil.executQuery(sql, new Object[]{id});
			while(resultSet.next()){
				news.setId(resultSet.getInt(1));
				news.setTitle(resultSet.getString(2));
				news.setContent(resultSet.getString(3));
				news.setPic(resultSet.getString(4));
				news.setDate(resultSet.getDate(5));
				news.setAuthor(resultSet.getString(6));
				news.setCategory(resultSet.getString(7));
				news.setScore(resultSet.getInt(8));
			}
		} catch (Exception e) {
		}
		return news;
	}

	@Override
	public boolean updateNews(News news) {
		// TODO Auto-generated method stub
		return false;
	}
}
