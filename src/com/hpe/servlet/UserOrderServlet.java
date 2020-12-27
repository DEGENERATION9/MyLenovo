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

import com.hpe.pojo.ShoppingCar;
import com.hpe.pojo.User;
import com.hpe.service.IOrderService;
import com.hpe.service.impl.OrderServiceImpl;
import com.hpe.util.Page;

/**
 * Servlet implementation class UserOrderServlet
 */
@WebServlet("/userOrderServlet")
public class UserOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private IOrderService orderService=new OrderServiceImpl();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action=request.getParameter("action");
		if(action.equals("addOrder")){
			addOrder(request, response);
		}
	}

	protected void addOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		//获取用户信息
		User user=(User) session.getAttribute("user");
		List<ShoppingCar> list=(List<ShoppingCar>) session.getAttribute("shoppingcar");
		if(user!=null){
			boolean res;
			try {
				res=orderService.addOrder(user.getId(), list);
				if(res){
					//清空购物车
					session.removeAttribute("shoppingcar");
					out.print("<script>"
							+"alert('订单提交成功!');"
							+"window.location.href='"+request.getContextPath()+"/cart.jsp';"
							+"</script>");
				}else{
					out.print("<script>"
							+"alert('订单提交失败!');"
							+"window.location.href='"+request.getContextPath()+"/index.jsp';"
							+"</script>");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else{
			out.print("<script>"
					+"alert('请先登录，再提交订单!');"
					+"window.location.href='"+request.getContextPath()+"/login.jsp';"
					+"</script>");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
