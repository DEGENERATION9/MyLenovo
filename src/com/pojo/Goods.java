/**
 *
 */
package com.hpe.pojo;

import java.math.BigDecimal;

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


	@Override
	public String toString() {
		return "Goods{" +
				"id=" + id +
				", type=" + type +
				", img='" + img + '\'' +
				", title='" + title + '\'' +
				", info='" + info + '\'' +
				", price=" + price +
				", num=" + num +
				", text='" + text + '\'' +
				", config='" + config + '\'' +
				'}';
	}
}
