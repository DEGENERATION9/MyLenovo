package com.hpe.servlet;

import com.hpe.service.impl.GoodsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author xyh
 * @date 2020/12/23 16:31
 */
@WebServlet("/goodsServlet")
public class GoodsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        GoodsServiceImpl goodsService = new GoodsServiceImpl();
        List search = goodsService.search(title);
        request.setAttribute("search",search);
        request.getRequestDispatcher("/search.jsp").forward(request,response);
    }
}
