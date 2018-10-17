package com.yougou.service;

import java.util.List;

import com.yougou.bean.Goods;
import com.yougou.bean.Image;
import com.yougou.dao.SearchGoodsDao;

public class GoodsService {
	public static Goods querygoods(String goodsname) {
		return SearchGoodsDao.querygoods(goodsname);
	}
	public static List<Image> querypicture() {
		return SearchGoodsDao.querypicture();
	}
}
