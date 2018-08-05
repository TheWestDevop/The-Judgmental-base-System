/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Post;

import java.sql.Date;



/**
 *
 * @author user
 */
public class PostBean {
  public String PostTitle;

    public PostBean(String PostTitle, String PostContent, String PostDescription, String PostAuthor,java.sql.Date PublishDate,boolean IsVisiable,boolean AllowComments) {
        super();
        this.PostTitle = PostTitle;
        this.PostContent = PostContent;
        this.PostDescription = PostDescription;
        this.PostAuthor = PostAuthor;
        this.PublishDate = PublishDate;
        this.IsVisiable = IsVisiable;
        this.AllowComments = AllowComments;
    }

    PostBean() {
    super(); 
    }

    public String getPostTitle() {
        return PostTitle;
    }

    public void setPostTitle(String PostTitle) {
        this.PostTitle = PostTitle;
    }

    public String getPostContent() {
        return PostContent;
    }

    public void setPostContent(String PostContent) {
        this.PostContent = PostContent;
    }

    public String getPostDescription() {
        return PostDescription;
    }

    public void setPostDescription(String PostDescription) {
        this.PostDescription = PostDescription;
    }

    public String getPostAuthor() {
        return PostAuthor;
    }

    public void setPostAuthor(String PostAuthor) {
        this.PostAuthor = PostAuthor;
    }

    public boolean isIsVisiable() {
        return IsVisiable;
    }

    public void setIsVisiable(boolean IsVisiable) {
        this.IsVisiable = IsVisiable;
    }

    public boolean isAllowComments() {
        return AllowComments;
    }

    public void setAllowComments(boolean AllowComments) {
        this.AllowComments = AllowComments;
    }

    public Date getPublishDate() {
        return PublishDate;
    }

    public void setPublishDate(Date PublishDate) {
        this.PublishDate = PublishDate;
    }
    public String PostContent;
    public String PostDescription;
    public String PostAuthor;
    public boolean IsVisiable=true;
    public boolean AllowComments=true;
    java.sql.Date PublishDate = new java.sql.Date(new java.util.Date().getTime());
    

    
   
    
}
