/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package web;

import sun.util.calendar.BaseCalendar;



/**
 *
 * @author Eslam
 */
public class Post {
    public int ID;

    public Post(){
        super();
    }

    public Post(int ID, String PostTitle, String PostContent, String PostDescription, String PostImage, String PostAuthor) {
        this.ID = ID;
        this.PostTitle = PostTitle;
        this.PostContent = PostContent;
        this.PostDescription = PostDescription;
        this.PostImage = PostImage;
        this.PostAuthor = PostAuthor;
        
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
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

    public String getPostImage() {
        return PostImage;
    }

    public void setPostImage(String PostImage) {
        this.PostImage = PostImage;
    }

    public String getPublishDate() {
        return PublishDate;
    }

    public void setPublishDate(String PublishDate) {
        this.PublishDate = PublishDate;
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
    public String PostTitle;
    public String PostContent;
    public String PostDescription;
    public String PostImage;
    public String PublishDate="today";
    public String PostAuthor;
    public boolean IsVisiable=true;
    public boolean AllowComments=true;
    
    
}
