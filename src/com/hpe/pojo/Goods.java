/**
 * 
 */
package com.hpe.pojo;

import java.math.BigDecimal;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.converters.BigDecimalConverter;

/**
 * 商品类
 * @author 晓
 *
 */
public class Goods {

	int id;//id
	int type;//商品类别0笔记本1台式2pad3其他配饰
	String img;//图片路径
	String title;//商品名
	String info;//商品简介
	BigDecimal price;//商品价格
	int num;//商品库存
	String text;//商品详细信息
	String config;//商品配置信息
	
	
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Goods(int id, int type, String img, String title, String info, BigDecimal price, int num, String text,
			String config) {
		super();
		this.id = id;
		this.type = type;
		this.img = img;
		this.title = title;
		this.info = info;
		this.price = price;
		this.num = num;
		this.text = text;
		this.config = config;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
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

	public BigDecimal getPrice() {
		
		return price;
	}
	public void setPrice(BigDecimal price) {
		
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
	

	
}
