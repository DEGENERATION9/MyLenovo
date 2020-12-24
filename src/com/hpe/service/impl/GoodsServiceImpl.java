package com.hpe.service.impl;

import com.hpe.dao.IGoodsDao;
import com.hpe.dao.impl.GoodsDaoImpl;
import com.hpe.service.IGoodsService;

import java.util.List;

/**
 * @author xyh
 * @date 2020/12/23 15:49
 */
public class GoodsServiceImpl implements IGoodsService {
    private IGoodsDao goodsDao=new GoodsDaoImpl();
    @Override
    public List search(String title) {
        return goodsDao.search(title);
//        return null;
    }
}
