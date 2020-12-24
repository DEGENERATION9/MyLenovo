package com.hpe.dao.impl;

import com.hpe.dao.IGoodsDao;
import com.hpe.pojo.Goods;
import com.hpe.util.DBUtil;
import org.apache.commons.beanutils.BeanUtils;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @author xyh
 * @date 2020/12/23 15:50
 */
public class GoodsDaoImpl implements IGoodsDao {
    private final DBUtil dbutil = new DBUtil();

    @Override
    public List search(String title) {
        String sql = "select *\n" +
                "from goods where title like concat('%',?,'%');";
        Object[] param = { title };
        try {
            List<Map<String, Object>> queryList = dbutil.getQueryList(sql, param);
            return queryList.stream().map(map -> {
                Goods goods = new Goods();
                try {
                    BeanUtils.populate(goods, map);
                } catch (IllegalAccessException | InvocationTargetException e) {
                    e.printStackTrace();
                }
                return goods;
            }).collect(Collectors.toList());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
