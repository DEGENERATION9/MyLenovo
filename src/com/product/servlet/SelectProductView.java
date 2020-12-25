package com.product.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.product.dao.goodsdao;
import com.product.dao.typesdao;
import com.product.entity.goods;
import com.product.entity.types;

/**
 * Servlet implementation class SelectProductView
 */
//罗子维
@WebServlet("/selectproductview")
public class SelectProductView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		
		//获取最近访问
		HttpSession session = request.getSession();
		
		session.getAttribute("ids");
		ArrayList<Integer> ids = (ArrayList<Integer>)session.getAttribute("ids");
		
		if(ids == null) {
			ids = new ArrayList<Integer>();
		}
		
		if(ids.size() >= 5) { //存5个
			ids.remove(0);//删最早的一个
		}
		if(id!=null && (!ids.contains(Integer.parseInt(id)))) {
			ids.add(Integer.parseInt(id));//
		}
		session.setAttribute("ids", ids);
		
		ids = (ArrayList<Integer>)session.getAttribute("ids");
		
		if(ids != null) {
			ArrayList<goods> Lastlist = goodsdao.selectAllById(ids);
			request.setAttribute("Lastlist", Lastlist);
		}
		
		goods it = null;
		types blog = null;
		
		//返回商品详情
		if(id != null) {
			it = goodsdao.selectById(Integer.parseInt(id));
			request.setAttribute("it", it);
		}
		
		//推荐相似商品
		if(it != null) {
			int type = it.getType();
			ArrayList<goods> rlist = goodsdao.selectAllBytype(type);
			request.setAttribute("rlist", rlist);
		}
		
		//获取分类名
		if(it != null) {
			int type = it.getType();
			blog = typesdao.selectById(type);
			request.setAttribute("blog", blog);
		}
		
		
		
		request.getRequestDispatcher("details.jsp").forward(request, response);
	}
	 
}
