<%@ page import="java.util.List" %>
<%-- <%@ page import="com.mysql.cj.xdevapi.JsonValue" %>  --%> 
<%@ page import="com.hpe.pojo.Goods" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>搜索页</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<div class="well">
    <div class="container">
        <form class="clearfix" action="GoodsServlet?action=search" method="post" >
            <div class="form-group col-md-8">
                <input type="text" class="form-control" name="title" value="${title }" placeholder="输入商品名称">
            </div>
            <div class="col-md-4">
                <button type="submit" class="btn btn-success">搜索</button>
            </div>
        </form>
    </div>
</div>

<div class="container">
    <c:forEach var="item" items="${search}">
        <div class="col-md-3" style="margin-bottom: 30px;">
            <div class="card">
                <img class="card-img-top" src="img/product/${item.title }.jpg" alt="Card image" style="width:100%">
                <div class="card-body">
                    <h4 class="card-title">${item.price}</h4>
                    <p class="card-text">${item.title}</p>
                    <a href="#" class="btn btn-primary">购买</a>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>