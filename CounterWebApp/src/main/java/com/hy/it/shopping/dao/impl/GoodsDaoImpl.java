/*
 * Copyright Notice ====================================================
 * This file contains proprietary information of Hewlett-Packard Co.
 * Copying or reproduction without prior written approval is prohibited.
 * Copyright (c) 2012 All rights reserved. =============================
 */

package com.hy.it.shopping.dao.impl;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.hy.it.shopping.dao.IGoodsDao;
import com.hy.it.shopping.entity.Goods;

public class GoodsDaoImpl extends SqlMapClientDaoSupport implements IGoodsDao {

	@Override
	public List<Goods> getAllGoods() {
		// TODO Auto-generated method stub
		return getSqlMapClientTemplate().queryForList("queryAll");
	}

	@Override
	public Goods getGoodsById(String id) {
		// TODO Auto-generated method stub
		return (Goods) getSqlMapClientTemplate().queryForObject("queryById", id);
	}

	@Override
	public void update(Goods good) {
		// TODO Auto-generated method stub
		getSqlMapClientTemplate().update("updateGoods", good);
	}

}
