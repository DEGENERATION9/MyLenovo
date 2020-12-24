package com.hpe.dao;

import com.hpe.pojo.Goods;

import java.util.List;

/**
 * @author xyh
 * @date 2020/12/23 15:49
 */
public interface IGoodsDao {
    List search(String title);
}
