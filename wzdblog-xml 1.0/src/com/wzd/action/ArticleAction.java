package com.wzd.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wzd.bean.Article;
import com.wzd.bean.PageBean;
import com.wzd.service.ArticleService;
import com.wzd.utils.UploadUtil;
import org.apache.struts2.ServletActionContext;

import java.io.*;
import java.util.Date;
import java.util.List;

/**
 * Created by admin on 2016/2/20.
 */
public class ArticleAction extends ActionSupport{
    private int id;
    private int pag;
    private Article article;
    private List<Article> newArticle;
    private PageBean pageBean;
    private ArticleService as;

    private String title;
    private String author;
    private String category;
    private String content;
    private String introduction;

    private File upload;
    private String uploadFileName;
    private String uploadContentType;

    public String home(){
        newArticle = as.newArticle(5);
        return "home";
    }
    public void addArticle() throws FileNotFoundException{
        UploadUtil.upload(upload,uploadFileName);
        Article article = new Article();
        article.setTitle(title);
        article.setAuthor(author);
        article.setDate(new Date());
        article.setContent(content);
        article.setIntroduction(introduction);
        article.setImg("images\\" + uploadFileName);
        as.addArticle(article);
    }
    public String selectArticle(){
        article = as.selectArticle(id);
        if(article != null) {
            return "success";
        }
        return "failure";
    }

    public String queryForPage(){
        String hql = "from Article";
        pageBean = as.queryForPage(hql,pag,6);
        return "article";
    }

    public ArticleService getAs() {
        return as;
    }

    public void setAs(ArticleService as) {
        this.as = as;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }

    public List<Article> getNewArticle() {
        return newArticle;
    }

    public void setNewArticle(List<Article> newArticle) {
        this.newArticle = newArticle;
    }

    public int getPag() {
        return pag;
    }

    public void setPag(int pag) {
        this.pag = pag;
    }

    public PageBean getPageBean() {
        return pageBean;
    }

    public void setPageBean(PageBean pageBean) {
        this.pageBean = pageBean;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public File getUpload() {
        return upload;
    }

    public void setUpload(File upload) {
        this.upload = upload;
    }

    public String getUploadFileName() {
        return uploadFileName;
    }

    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName = uploadFileName;
    }

    public String getUploadContentType() {
        return uploadContentType;
    }

    public void setUploadContentType(String uploadContentType) {
        this.uploadContentType = uploadContentType;
    }
}
