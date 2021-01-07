package com.hpe.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hpe.pojo.Goods;

import com.hpe.pojo.ShoppingCar;
import com.hpe.service.IGoodsService;
import com.hpe.service.impl.GoodsServiceImpl;

/**
 * Servlet implementation class ShoppingCarServlet
 */
@WebServlet("/shoppingCarServlet")
public class ShoppingCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IGoodsService goodsService = new GoodsServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShoppingCarServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getParameter("action");
		if (action.equals("add")) {
			addCar(request, response);
		} else if (action.equals("delAll")) {
			delAll(request, response);
		} else if (action.equals("delCar")) {
			delCar(request, response);
		}else if (action.equals("addOld")) {
			//加1
			addOld(request, response);
		}else if (action.equals("delOld")) {
			//减1
			delOld(request, response);
		}else if (action.equals("addQua")) {
			//改变数量
			addQua(request, response);
		}else if (action.equals("detailadd")) {
			//详情页加购
			detailadd(request, response);
		}
	}
	protected void detailadd(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取商品id
		int goodsid = Integer.parseInt(request.getParameter("goodsid"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));

		// 获取购物车
		HttpSession session = request.getSession();
		List<ShoppingCar> carlist = (List<ShoppingCar>) session.getAttribute("shoppingcar");
		// 判断菜品是否存在,
		boolean flag = false;
		// 判断购物车是否存在
		if (carlist == null) {
			// 创建购物车
			carlist = new ArrayList<ShoppingCar>();

		} else {
			// 购物车存在，判断是否有该菜，若有数量加1
			for (ShoppingCar car : carlist) {
				if (car.getGoodsid() == goodsid) {
					car.setSum( quantity);
					
					flag = true;
					break;
				}
			}
		}
		// 创建一个新的菜品
		if (!flag) {
			// 创建购物车实例
			ShoppingCar car1 = new ShoppingCar();
			// 根据id查询
			Goods goods = goodsService.getGoodsById(goodsid);
			car1.setGoodsid(goodsid);
			car1.setName(goods.getTitle());
			car1.setSum(quantity);
			car1.setPrice(goods.getPrice());
			// 把商品都添加到list中
			carlist.add(car1);
		}
		// 把购物车放到session中
		session.setAttribute("shoppingcar", carlist);
/*		request.getRequestDispatcher("index.jsp").forward(request, response);*/
		response.sendRedirect("cart.jsp");

	}
	protected void addQua(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取商品id
		int goodsid = Integer.parseInt(request.getParameter("goodsid"));
		int nowQuantity = Integer.parseInt(request.getParameter("quantity"));

		// 获取购物车
		HttpSession session = request.getSession();
		List<ShoppingCar> carlist = (List<ShoppingCar>) session.getAttribute("shoppingcar");
		for (ShoppingCar car : carlist) {
			if (car.getGoodsid() == goodsid) {
				if(nowQuantity<=1)
				{
					car.setSum(1);
				}else{
					car.setSum(nowQuantity);
				}
				break;
			}
		}
		// 把购物车放到session中
		session.setAttribute("shoppingcar", carlist);
/*		request.getRequestDispatcher("index.jsp").forward(request, response);*/
		request.getRequestDispatcher("cart.jsp").forward(request, response);

	}
	protected void delOld(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取商品id
		int goodsid = Integer.parseInt(request.getParameter("goodsid"));
		// 获取购物车
		HttpSession session = request.getSession();
		List<ShoppingCar> carlist = (List<ShoppingCar>) session.getAttribute("shoppingcar");
		for (ShoppingCar car : carlist) {
			if (car.getGoodsid() == goodsid) {
				if(car.getSum()<=1)
				{
					car.setSum(1);
				}else{
					car.setSum(car.getSum() - 1);
				}
				
				
				break;
			}
		}
		// 把购物车放到session中
		session.setAttribute("shoppingcar", carlist);
/*		request.getRequestDispatcher("index.jsp").forward(request, response);*/
		request.getRequestDispatcher("cart.jsp").forward(request, response);

	}
//实现 购物车中商品数量的调整
	protected void addOld(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取商品id
		int goodsid = Integer.parseInt(request.getParameter("goodsid"));
		//int nowQuantity = Integer.parseInt(request.getParameter("quantity"));

		// 获取购物车
		HttpSession session = request.getSession();
		List<ShoppingCar> carlist = (List<ShoppingCar>) session.getAttribute("shoppingcar");
		for (ShoppingCar car : carlist) {
			if (car.getGoodsid() == goodsid) {
				car.setSum(car.getSum() + 1);
				
				break;
			}
		}
		// 把购物车放到session中
		session.setAttribute("shoppingcar", carlist);
/*		request.getRequestDispatcher("index.jsp").forward(request, response);*/
		request.getRequestDispatcher("cart.jsp").forward(request, response);

	}
	protected void addCar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取商品id
		int goodsid = Integer.parseInt(request.getParameter("goodsid"));
		//int quantity = Integer.parseInt(request.getParameter("quantity"));

		// 获取购物车
		HttpSession session = request.getSession();
		List<ShoppingCar> carlist = (List<ShoppingCar>) session.getAttribute("shoppingcar");
		// 判断菜品是否存在,
		boolean flag = false;
		// 判断购物车是否存在
		if (carlist == null) {
			// 创建购物车
			carlist = new ArrayList<ShoppingCar>();

		} else {
			// 购物车存在，判断是否有该菜，若有数量加1
			for (ShoppingCar car : carlist) {
				if (car.getGoodsid() == goodsid) {
					car.setSum(car.getSum() + 1);
					
					flag = true;
					break;
				}
			}
		}
		// 创建一个新的菜品
		if (!flag) {
			// 创建购物车实例
			ShoppingCar car1 = new ShoppingCar();
			// 根据id查询
			Goods goods = goodsService.getGoodsById(goodsid);
			car1.setGoodsid(goodsid);
			car1.setName(goods.getTitle());
			car1.setSum(1);
			car1.setPrice(goods.getPrice());
			// 把商品都添加到list中
			carlist.add(car1);
		}
		// 把购物车放到session中
		session.setAttribute("shoppingcar", carlist);
/*		request.getRequestDispatcher("index.jsp").forward(request, response);*/
		response.sendRedirect("GoodsServlet?action=findbytype&&type=0");

	}
//删除一个
	protected void delAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取id
		int id = Integer.parseInt(request.getParameter("goodsid"));
		// 获取购物车
		HttpSession session = request.getSession();
		List<ShoppingCar> carlist = (List<ShoppingCar>) session.getAttribute("shoppingcar");
		// 循环
		for (ShoppingCar car : carlist) {
			if (id == car.getGoodsid()) {
				// 删除
				carlist.remove(car);
				break;
			}
		}
		// 把购物车放到session中
		session.setAttribute("shoppingcar", carlist);
		response.sendRedirect(request.getContextPath()+"/cart.jsp");
	}

	// 清空购物车
	protected void delCar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		// 清空购物车
		session.removeAttribute("shoppingcar");
		response.sendRedirect(request.getContextPath()+"/cart.jsp");
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