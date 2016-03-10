package com.dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.bean.Comment;
import com.dao.CommentDao;
import com.utils.SimpleJDBCUtil;


public class CommentDaoImpl implements CommentDao{

	@Override
	public boolean deleteCommentAndAdmin(int id) {
		// TODO Auto-generated method stubW
		return false;
	}

	@Override
	public boolean deleteCommentAndUser(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insertComment(Comment comment) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Comment> selectAllComment() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Comment> selectCommentAndNews(int newsid) {
		String sql = "select * from t_comment where newsid=? and visible = 1";
		List<Comment> list = new ArrayList<Comment>();
		try {
			ResultSet resultSet = SimpleJDBCUtil.executQuery(sql, new Object[]{newsid});
			while(resultSet.next()){
				Comment comment = new Comment();
				comment.setId(resultSet.getInt(1));
				comment.setUserid(resultSet.getInt(2));
				comment.setNewsid(resultSet.getInt(3));
				comment.setContent(resultSet.getString(4));
				comment.setDate(resultSet.getDate(5));
				comment.setVisible(resultSet.getBoolean(6));
				list.add(comment);
			}
		} catch (Exception e) {
		}
		return list;
	}

}
