/**
 * 
 */
package com.hpe.pojo;

import java.math.BigDecimal;

/** 
 * 类描述：
 * 作者： xiaoxiao 
 * 创建日期：2019年9月5日
 * 修改人：
 * 修改日期：
 * 修改内容：
 * 版本号： 1.0.0   
 */

public class ShoppingCar {

	private int goodsid;//商品id
	private String name;//商品名称
	private BigDecimal price;//价格
	private int sum;//数量
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	
}
