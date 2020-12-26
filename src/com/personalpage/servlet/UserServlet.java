package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.User;
import service.IUserService;
import service.impl.UserServiceImpl;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IUserService us = new UserServiceImpl();
    
	protected void usersupdate(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
		  {
		    String name = request.getParameter("name");
		    String pwd = request.getParameter("pwd");
		    String realname = request.getParameter("realname");
		    String sex = request.getParameter("sex");
		    String address = request.getParameter("address");
		    String phone = request.getParameter("phone");
		    String email = request.getParameter("email");
		    int id = Integer.parseInt(request.getParameter("id"));
		    //int id =1;
		    User u = new User(id, name, pwd, realname, sex, address, phone, email);
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
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html; charset=utf-8");
	    String action = request.getParameter("action");
	    if (action.equals("update")) 
	        usersupdate(request, response);
	}

}
