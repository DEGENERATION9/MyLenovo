package com.hpe.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hpe.pojo.Goods;
import com.hpe.service.IGoodsService;
import com.hpe.service.impl.GoodsServiceImpl;

/**
 * Servlet implementation class GoodsServlet
 */
@WebServlet("/GoodsServlet")
public class GoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IGoodsService goodsService = new GoodsServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GoodsServlet() {
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
		if (action.equals("findbytype")) {
			findByType(request, response);
		} else if (action.equals("findAll")) {
			findAll(request, response);
		} else if (action.equals("search")) {
			search(request, response);
		} else if (action.equals("findbytype1")) {
			findByType1(request, response);
		} else if (action.equals("asc")) {
			asc(request, response);
		}
	}

	protected void asc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//int type = Integer.parseInt(request.getParameter("type"));
		//List<Goods> list = goodsService.findByType(0);
		
		List<Goods> list=goodsService.asc();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/GoodsServlet?action=findbytype1&&type=0").forward(request, response);
	}

	// 通过type查询
	protected void findByType1(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int type = Integer.parseInt(request.getParameter("type"));
		List<Goods> list = goodsService.findByType(type);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/shop.jsp").forward(request, response);
	}

	/**
	 * @author xyh
	 * @date 2020/12/23 16:31
	 */
	protected void search(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String title = request.getParameter("title");
		GoodsServiceImpl goodsService = new GoodsServiceImpl();
		List search = goodsService.search(title);
		request.setAttribute("search", search);
		request.setAttribute("title", title);
		request.getRequestDispatcher("/search.jsp").forward(request, response);
	}

	protected void findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Goods> list = goodsService.findAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	// 通过type查询
	protected void findByType(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int type = Integer.parseInt(request.getParameter("type"));
		List<Goods> list = goodsService.findByType(type);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
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
