/*
 * Copyright Notice ====================================================
 * This file contains proprietary information of Hewlett-Packard Co.
 * Copying or reproduction without prior written approval is prohibited.
 * Copyright (c) 2012 All rights reserved. =============================
 */

package com.hy.it.shopping.service.impl;

import java.util.List;

import com.hy.it.shopping.dao.IGoodsDao;
import com.hy.it.shopping.entity.Goods;
import com.hy.it.shopping.service.IGoodsService;

public class GoodsServiceImpl implements IGoodsService {
	private IGoodsDao goodsDao;

	public IGoodsDao getGoodsDao() {
		return goodsDao;
	}

	public void setGoodsDao(IGoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	@Override
	public List<Goods> getAllGoods() {
		// TODO Auto-generated method stub
		return goodsDao.getAllGoods();
	}

	@Override
	public Goods getGoodsById(String id) {
		// TODO Auto-generated method stub
		return goodsDao.getGoodsById(id);
	}

	@Override
	public void update(Goods good) {
		// TODO Auto-generated method stub
		goodsDao.update(good);
	}

}
