package com.dao;

import java.util.List;

import com.bean.Comment;


public interface CommentDao {
	boolean insertComment(Comment comment); 
	boolean deleteCommentAndAdmin(int id); 
	boolean deleteCommentAndUser(int id); 
	List<Comment> selectAllComment();  
	List<Comment> selectCommentAndNews(int newsid);
}
