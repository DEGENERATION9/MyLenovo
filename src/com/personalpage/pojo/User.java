package pojo;

public class User {
	private int id;//会员账号
	private String name;//昵称
	private String pwd;//密码
	private String realname;//真实姓名
	private String sex;//性别
	private String address;//地址
	private String phone;//电话
	private String email;//邮箱
	
	public User(String name, String pwd)
	  {
	    this.name = name;
	    this.pwd = pwd;
	  }
	
	public User() {}
	
	public User(int id,String name, String pwd, String realname, String sex,String address,String phone, String email) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.realname = realname;
		this.sex = sex;
		this.address = address;
		this.phone = phone;
		this.email = email;
	}
	public User(String name, String pwd, String realname, String sex,String address,String phone, String email) {
		super();
		this.name = name;
		this.pwd = pwd;
		this.realname = realname;
		this.sex = sex;
		this.address = address;
		this.phone = phone;
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
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
