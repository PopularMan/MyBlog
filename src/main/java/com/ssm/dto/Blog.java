package com.ssm.dto;

import java.sql.Timestamp;

public class Blog {
	    private String blog_id;
	    private String blog_title;
	    private String blog_futitle;
	    private String blog_coverimage;
	    private String blog_type;
	    private int blog_state;
	    private String blog_article;
	    private String blog_author;
	    private Timestamp blog_time;
	    private int blog_eyes;
	    private int blog_dz;
	    private String blog_tag;

		public String getBlog_tag() {
			return blog_tag;
		}

		public void setBlog_tag(String blog_tag) {
			this.blog_tag = blog_tag;
		}

	public int getBlog_dz() {
			return blog_dz;
		}
		public void setBlog_dz(int blog_dz) {
			this.blog_dz = blog_dz;
		}
		public String getBlog_id() {
			return blog_id;
		}
		public void setBlog_id(String blog_id) {
			this.blog_id = blog_id;
		}
		public String getBlog_title() {
			return blog_title;
		}
		public void setBlog_title(String blog_title) {
			this.blog_title = blog_title;
		}
		public String getBlog_futitle() {
			return blog_futitle;
		}
		public void setBlog_futitle(String blog_futitle) {
			this.blog_futitle = blog_futitle;
		}
		public String getBlog_coverimage() {
			return blog_coverimage;
		}
		public void setBlog_coverimage(String blog_coverimage) {
			this.blog_coverimage = blog_coverimage;
		}
		public String getBlog_type() {
			return blog_type;
		}
		public void setBlog_type(String blog_type) {
			this.blog_type = blog_type;
		}
		public int getBlog_state() {
			return blog_state;
		}
		public void setBlog_state(int blog_state) {
			this.blog_state = blog_state;
		}
	
		public String getBlog_article() {
			return blog_article;
		}
		public void setBlog_article(String blog_article) {
			this.blog_article = blog_article;
		}
		public String getBlog_author() {
			return blog_author;
		}
		public void setBlog_author(String blog_author) {
			this.blog_author = blog_author;
		}
		public Timestamp getBlog_time() {
			return blog_time;
		}
		public void setBlog_time(Timestamp blog_time) {
			this.blog_time = blog_time;
		}
		public int getBlog_eyes() {
			return blog_eyes;
		}
		public void setBlog_eyes(int blog_eyes) {
			this.blog_eyes = blog_eyes;
		}
	    
}
