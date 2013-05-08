package com.hy.it.shopping.service;

import junit.framework.Assert;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hy.it.shopping.entity.Goods;
import com.hy.it.shopping.service.impl.GoodsServiceImpl;

/*
 * Copyright Notice ====================================================
 * This file contains proprietary information of Hewlett-Packard Co.
 * Copying or reproduction without prior written approval is prohibited.
 * Copyright (c) 2012 All rights reserved. =============================
 */

public class GoodsServiceTest {
	private IGoodsService goodsService;

	public IGoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(IGoodsService goodsService) {
		this.goodsService = goodsService;
	}

	@Test
	public void testGoodsServiceTest() {
		ClassPathXmlApplicationContext a = new ClassPathXmlApplicationContext("applicationContext.xml");
		GoodsServiceImpl goodsService = (GoodsServiceImpl) a.getBean("goodsServiceTarget");
		Goods good1 = goodsService.getGoodsById("1");
		Assert.assertEquals(good1.getGoods_name(), "李宁运动鞋");

	}

	public static void main(String[] args) {

	}

}
