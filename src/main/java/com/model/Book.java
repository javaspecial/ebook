package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "book")
public class Book {
	public final static String BOOK_ID = "book_id";
	public final static String BOOK_TITLE = "title";
	public final static String BOOK_DESCRIPTION = "description";
	public final static String BOOK_COVER_IMAGE = "coverimagename";
	public final static String BOOK_PDF = "pdfname";
	public final static String BOOK_CATEGORY = "category";
	public final static String BOOK_SEARCH = "search_counter";



	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "book_id")
	private Integer book_id;

	@Column(name = "title")
	private String title;

	@Column(name = "description")
	private String description;

	@Column(name = "coverimagename")
	private byte[] coverimagename;

	@Column(name = "pdfname")
	private String pdfname;

	@Column(name = "search_counter")
	private String search_counter;
	
	@Column(name = "category")
	private String category;

	public Integer getBook_id() {
		return book_id;
	}

	public void setBook_id(Integer book_id) {
		this.book_id = book_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public byte[] getCoverimagename() {
		return coverimagename;
	}

	public void setCoverimagename(byte[] coverimagename) {
		this.coverimagename = coverimagename;
	}

	public String getPdfname() {
		return pdfname;
	}

	public void setPdfname(String pdfname) {
		this.pdfname = pdfname;
	}

	public String getSearch_counter() {
		return search_counter;
	}

	public void setSearch_counter(String search_counter) {
		this.search_counter = search_counter;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}


}