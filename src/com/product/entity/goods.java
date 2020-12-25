package com.product.entity;
//罗子维
public class goods {
	private int id;
	private String title;
	private String info;
	private int type;
	private int price;
	private int num;
	private String text;
	private String config;
	private String img; //图片文件名
	
	public goods(int id, int type, String img, String title, String info, int price, int num, String text, String config) {
		super();
		this.id = id;
		this.title = title;
		this.info = info;
		this.type = type;
		this.price = price;
		this.num = num;
		this.text = text;
		this.config = config;
		this.img = img;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public int getType() {
		return type;
	}

	public void setTid(int type) {
		this.type = type;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getConfig() {
		return config;
	}

	public void setConfig(String config) {
		this.config = config;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	
}
