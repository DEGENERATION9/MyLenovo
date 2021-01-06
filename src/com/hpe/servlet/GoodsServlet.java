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

import com.hpe.dao.IGoodsDao;
import com.hpe.dao.ITypesDao;
import com.hpe.dao.impl.GoodsDaoImpl;
import com.hpe.dao.impl.TypesDaoImpl;
import com.hpe.pojo.Goods;
import com.hpe.pojo.Types;
import com.hpe.service.IGoodsService;
import com.hpe.service.impl.GoodsServiceImpl;

/**
 * Servlet implementation class GoodsServlet
 */
@WebServlet("/GoodsServlet")
public class GoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IGoodsService goodsService = new GoodsServiceImpl();
	private IGoodsDao goodsdao = new GoodsDaoImpl();
	private ITypesDao typessdao = new TypesDaoImpl();

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
		} else if (action.equals("details")) {
			details(request, response);
		} else if (action.equals("suggest")) {
			suggest(request, response);
		}
	}

	// 价格排序
	protected void asc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Goods> list = goodsService.asc();
		List<Goods> list1 = null;
		for (Goods goods : list) {
			if (goods != null && goods.getType() == 0) {
				list1.add(goods);
			}
		}
		request.setAttribute("list1", list);
		request.getRequestDispatcher("/shop.jsp").forward(request, response);
	}

	// 推荐
	protected void suggest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 获取最近访问
		HttpSession session = request.getSession();

		session.getAttribute("ids");
		ArrayList<Integer> ids = (ArrayList<Integer>) session.getAttribute("ids");

		if (ids == null) {
			ids = new ArrayList<Integer>();
		}

		if (ids.size() >= 5) { // 存5个
			ids.remove(0);// 删最早的一个
		}

		session.setAttribute("ids", ids);

		ids = (ArrayList<Integer>) session.getAttribute("ids");

		if (ids != null) {
			ArrayList<Goods> Lastlist = goodsdao.selectAllById(ids);
			request.setAttribute("list", Lastlist);
		}

		request.getRequestDispatcher("shop.jsp").forward(request, response);
	}

	protected void details(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");

		Goods it = null;
		// 返回商品详情
		it = goodsService.getGoodsById(Integer.parseInt(id));
		request.setAttribute("it", it);

		// 获取最近访问
		HttpSession session = request.getSession();

		session.getAttribute("ids");
		ArrayList<Integer> ids = (ArrayList<Integer>) session.getAttribute("ids");

		if (ids == null) {
			ids = new ArrayList<Integer>();
		}

		if (ids.size() >= 5) { // 存5个
			ids.remove(0);// 删最早的一个
		}
		if (id != null && (!ids.contains(Integer.parseInt(id)))) {
			ids.add(Integer.parseInt(id));//
		}
		session.setAttribute("ids", ids);

		ids = (ArrayList<Integer>) session.getAttribute("ids");

		if (ids != null) {
			ArrayList<Goods> Lastlist = goodsdao.selectAllById(ids);
			request.setAttribute("Lastlist", Lastlist);
		}

		Types blog = null;

		// 推荐相似商品
		if (it != null) {
			int type = it.getType();
			List<Goods> rlist = goodsService.findByType(type);
			request.setAttribute("rlist", rlist);
		}

		// 获取分类名
		if (it != null) {
			int type = it.getType();
			blog = typessdao.selectById(type);
			request.setAttribute("blog", blog);
		}

		request.getRequestDispatcher("details.jsp").forward(request, response);
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
