/*
 * Copyright Notice ====================================================
 * This file contains proprietary information of Hewlett-Packard Co.
 * Copying or reproduction without prior written approval is prohibited.
 * Copyright (c) 2012 All rights reserved. =============================
 */

package com.hy.it.shopping.service;

import java.util.List;

import com.hy.it.shopping.entity.Goods;

public interface IGoodsService {
	public List<Goods> getAllGoods();

	public Goods getGoodsById(String id);

	public void update(Goods good);
}
