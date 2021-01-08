package com.hpe.dao.impl;

import com.hpe.dao.IOrderDao;
import com.hpe.pojo.Order;
import com.hpe.pojo.User;
import com.hpe.util.DBUtil;

public class OrderDaoImpl implements IOrderDao {
	private DBUtil dbutil = new DBUtil();

	//创建订单，表内插入数据
	@Override
	public int pay(Order order) {
		// TODO Auto-generated method stub
		String sql = "insert into tb_mylenovo_order values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] param = {order.getOrder_id(),order.getOrder_num(), order.getUser_id(),order.getTotal_price() ,
				order.getPay_status(),order.getPay_type(),order.getPay_time(),order.getOrder_status(),
				order.getExtra_info(),order.getIs_delete(),order.getCreate_time(),order.getUpdate_time(),
				order.getPay_time(),};
		try {
			order = (Order) dbutil.getObject(Order.class, sql, param);
			return 1; //插入成功返回1
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
			
	}

}
