package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.User;
import com.service.IUserService;
import com.service.impl.UserServiceImpl;


/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IUserService us = new UserServiceImpl();
    
	protected void usersupdate(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
		  {
		    String userno = request.getParameter("userno");
		    String password = request.getParameter("password");
		    String name = request.getParameter("name");
		    String sex = request.getParameter("sex");
		    String address = request.getParameter("address");
		    String phone = request.getParameter("phone");
		    String email = request.getParameter("email");
		    int id = Integer.parseInt(request.getParameter("id"));
		    //int id =1;
		    User u = new User(id, userno, password, name, sex, address, phone, email);
		    //User u = new User( name, pwd, realname, sex, address, phone, email);
		    int result = this.us.update(u);
		    if (result == 1)
		    {
		      HttpSession hsession = request.getSession();
		      hsession.removeAttribute("user");
		      
		      response.getWriter().write("<script>alert('修改成功！');window.parent.location.href='" + 
		      
		        request.getContextPath() + "/index.jsp';" + 
		        "</script>");
		    }
		    else if (result == 0)
		    {
		      response.getWriter().write("<script>alert('修改失败！');window.location.href='" + 
		      
		        request.getContextPath() + "/MyPersonalPage.jsp';" + 
		        "</script>");
		    }
		  }
	
	protected void login(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String userno=request.getParameter("userno"); //获得账号
	    String pwd=request.getParameter("pwd");//获得密码
	    
		PrintWriter out = response.getWriter();

	    IUserService userService=new UserServiceImpl();
	    //调用service（业务层）的方法
	    User user=userService.login(userno,pwd);
	    if(user!=null) {
	     //登陆成功
	     System.out.println("登陆成功！");
	     request.getSession().setAttribute("user", user);
	     
	     request.getRequestDispatcher("index.jsp").forward(request, response);
	     
	    }else {
	     //登陆失败,跳到登陆页
	    	out.write("<script>" + "alert('用户名或密码错误，登陆失败!');"+"</script>");
	     System.out.println("账号密码错误！请重新登陆");
	     request.getRequestDispatcher("login.html").forward(request, response);
	     
	    }
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html; charset=utf-8");
	    String action = request.getParameter("action");
	    if (action.equals("update")) 
	        usersupdate(request, response);
	    else if (action.equals("login")) {
			login(request, response);
		}
	}


}
