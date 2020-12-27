package com.hpe.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hpe.service.IGoodsService;
import com.hpe.service.IUserService;
import com.hpe.service.impl.GoodsServiceImpl;
import com.hpe.service.impl.UserServiceImpl;
import com.hpe.pojo.Goods;
import com.hpe.pojo.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private IUserService usersService = new UserServiceImpl();
	private IGoodsService goodsService = new GoodsServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 请求转码
		request.setCharacterEncoding("utf-8");
		// 响应转码
		response.setContentType("text/html;charset=utf-8");
		// 请求参数
		String action = request.getParameter("action");
		if (action.equals("login")) {
			login(request, response);
		}
	}
	protected void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
	     //查询商品type=0
	     List<Goods> list=goodsService.findByType(0);
	     request.setAttribute("list", list);   
	     request.getRequestDispatcher("index.jsp").forward(request, response);
	     
	    }else {
	     //登陆失败,跳到登陆页
	    	out.write("<script>" + "alert('用户名或密码错误，登陆失败!');"+"</script>");
	     System.out.println("账号密码错误！请重新登陆");
	     request.getRequestDispatcher("login.html").forward(request, response);
	     
	    }
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
