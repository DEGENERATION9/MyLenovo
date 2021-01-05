<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>支付</title>
</head>
<body>
<div class="container">
	<form action="${pageContext.request.contextPath}/OrderServlet?method=payOrder" id="orderForm" method="post">
		<div class="row">
			<div style="margin: 0 auto; margin-top:10px;width:950px;">
				<strong>订单详情</strong>
				<table class="table table-bordered">
					<tbody>
						<tr class="warning">
							<th colspan="5">订单编号：${order.oid}</th>
						</tr>
						<tr class="warning">
							<th>图片</th>
							<th>商品</th>
							<th>价格</th>
							<th>数量</th>
							<th>小计</th>	
						</tr>
						<c:forEach items="${order.list}" var="items">
							<tr class="active">
								<td width="60" width="40%"><input type="hidden" name="id"
									value="22">	<img 
									src="${pageContext.request.contextPath}/${items.product.pimage}"
									width="70"  height="60"></td>
								<td width="30%"><a target="_blank"> ${items.product.pname}</a></td>
								<td width="20%">￥${items.product_shop_price}</td>
								<td width="10%">${items.quantity}</td>
								<td width="15%"><span class="subtotal">￥${items.total}</span></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</div>
			
		
		</form>
		
	
		<div class="col-md-6" style="width:100%;text-align:center;">
			<div class="input-group">
				<p><span class="input-group-addon">地址</span>
				<input type="text" size="30" maxlength="30" class="form-control"></p>
			</div>
			<div class="input-group">
				<p><span class="input-group-addon">收货人</span>				
				<input type="text" size="28" maxlength="28" class="form-control"></p>
				<p><span class="input-group-addon">电话</span>
				<input type="text" size="30" maxlength="30" class="form-control"></p>
				<p><span class="input-group-addon">选择银行：</span>	</p>			
			</div>	
		</div>
		<div style="width:100%;text-align:center;">
			<p><input type="checkbox" name="category" value="工商银行" />工商银行 </p>   
    		<p><input type="checkbox" name="category" value="中国银行" />中国银行</p>
    		<p><input type="checkbox" name="category" value="农业银行" />农业银行</p>    
    		<p><input type="checkbox" name="category" value="交通银行" />交通银行</p>    
    		<p><input type="checkbox" name="category" value="平安银行" />平安银行</p>    
    		<p><input type="checkbox" name="category" value="建设银行" />建设银行</p>    
   		</div>
		<div style="width:100%;text-align:center;">
			<button type="button">确认</button>
		</div>
	</div>
</body>
</html>
