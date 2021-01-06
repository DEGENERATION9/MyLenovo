/**
 * 
 */
package com.hpe.service.impl;

import java.util.List;

import com.hpe.dao.IGoodsDao;
import com.hpe.dao.impl.GoodsDaoImpl;
import com.hpe.pojo.Goods;
import com.hpe.service.IGoodsService;

/**
 * @author 晓
 *
 */
public class GoodsServiceImpl implements IGoodsService {

	private IGoodsDao goodsDao=new GoodsDaoImpl();
	@Override
	public List<Goods> findByType(int type) {
		// TODO Auto-generated method stub
		return goodsDao.findByType(type);
	}
	/* (non-Javadoc)
	 * @see com.hpe.service.IGoodsService#getGoodsById(int)
	 */
	@Override
	public Goods getGoodsById(int goodsid) {
		// TODO Auto-generated method stub
		return goodsDao.getGoodsById(goodsid);
	}
	/* (non-Javadoc)
	 * @see com.hpe.service.IGoodsService#findAll()
	 */
	@Override
	public List<Goods> findAll() {
		// TODO Auto-generated method stub
		return goodsDao.findAll();
	}
	
	
	/**
	 * @author xyh
	 * @date 2020/12/23 15:49
	 */
	@Override
	public List search(String title) {
		return goodsDao.search(title);
	}
	/* (non-Javadoc)
	 * @see com.hpe.service.IGoodsService#asc()
	 */
	@Override
	public List<Goods> asc() {
		
		return goodsDao.asc();
	}

}
