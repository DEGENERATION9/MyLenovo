/**
 * 
 */
package com.hpe.pojo;

/**
 * @author 晓
 *
 */
public class User {
	private int id;//用户id
	private String userno;//用户名
	private String password;//密码
	private String name;//真实姓名
	private String sex;//性别
	private String address;//地址
	private String phone;//电话
	private String email;//邮箱
	
	
	public User(int id,String userno, String password, String name, String sex, String address, String phone, String email) {
		super();
		this.id=id;
		this.userno = userno;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.address = address;
		this.phone = phone;
		this.email = email;
	}
	public User(String userno, String password, String phone, String email) {
		super();
		this.userno = userno;
		this.password = password;
		this.phone = phone;
		this.email = email;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserno() {
		return userno;
	}
	public void setUserno(String userno) {
		this.userno = userno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
