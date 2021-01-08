package com.hpe.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hpe.pojo.Order;
import com.hpe.pojo.User;
import com.hpe.service.IOrderService;
import com.hpe.service.IUserService;
import com.hpe.service.impl.OrderServiceImpl;
import com.hpe.service.impl.UserServiceImpl;


/**
 * Servlet implementation class PayServlet
 */
@WebServlet("/PayServlet")
public class PayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		// 请求转码
				request.setCharacterEncoding("utf-8");
				// 响应转码
				response.setContentType("text/html;charset=utf-8");
				// 请求参数
				String action = request.getParameter("action");
				if (action.equals("pay")) {
					try {
						pay(request, response);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
	}
	//增加订单
		protected void pay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		int order_id=Integer.parseInt(request.getParameter("order_id")); //获得订单id
	    String order_num =request.getParameter("order_num");
	    int user_id=Integer.parseInt(request.getParameter("user_id"));//获得用户id
	    int total_price=Integer.parseInt(request.getParameter("total_price"));//获得用户id
	    int pay_status=Integer.parseInt(request.getParameter("pay_status"));//获得用户id
	    int pay_type=Integer.parseInt(request.getParameter("pay_type"));//获得用户id
	    int order_status=Integer.parseInt(request.getParameter("order_status"));//获得用户id
	    
	    String extra_info =request.getParameter("extra_info");
		   
	    int is_delete=Integer.parseInt(request.getParameter("is_delete"));//获得用户id
	    String pay_time = request.getParameter("pay_time");
	    SimpleDateFormat sdf0 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    Date paydate = sdf0.parse(pay_time);
	 
	    String create_time = request.getParameter("create_time");
	    SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    Date createdate = sdf1.parse(create_time);
	 
	    String update_time = request.getParameter("update_time");
	    SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    Date updatedate = sdf2.parse(update_time);
	    

	    /*Order.java
	    int order_id;
		String order_num;
		int user_id;
		int total_price;
		int pay_status;
		int pay_type;
		Date pay_time;
		int order_status;
		String extra_info;
		int is_delete;
		Date create_time;
		Date update_time;
	    */
	   	Order order=new Order();
		if(order_id==0){
			order.setOrder_id(order_id);
		}
		order.setOrder_num(order_num);
		order.setUser_id(user_id);
		order.setTotal_price(total_price);
		order.setPay_status(pay_status);
		order.setPay_type(pay_type);
		order.setPay_time(paydate);
		order.setOrder_status(order_status);
		order.setExtra_info(extra_info);
		order.setIs_delete(is_delete);
		order.setCreate_time(createdate);
		order.setUpdate_time(updatedate);
	     
	    
	    IOrderService orderService=new OrderServiceImpl();
	    int result=orderService.pay(order);
		if(result>0) {
			//以Ajax方式向前端发送数据
			response.getWriter().write("success");
			 System.out.println("订单创建成功！");
			 request.getSession().setAttribute("order", order);
		     
		     request.getRequestDispatcher("pay.jsp").forward(request, response);
		  
			    
			
		}else {
			response.getWriter().write("fail");		
			   System.out.println("订单创建失败，请检查");
			     request.getRequestDispatcher("index.jsp").forward(request, response);
			  
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
