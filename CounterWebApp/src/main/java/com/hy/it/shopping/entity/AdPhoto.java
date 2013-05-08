package com.hy.it.shopping.entity;

public class AdPhoto {
	private String img_id;
	private String goods_id;
	private String midimg_addr;
	private String maximg_addr;
	private String minimg_addr;
	private String img_dcrip;
	public String getImg_id() {
		return img_id;
	}
	public void setImg_id(String imgId) {
		img_id = imgId;
	}
	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goodsId) {
		goods_id = goodsId;
	}
	public String getMidimg_addr() {
		return midimg_addr;
	}
	public void setMidimg_addr(String midimgAddr) {
		midimg_addr = midimgAddr;
	}
	public String getMaximg_addr() {
		return maximg_addr;
	}
	public void setMaximg_addr(String maximgAddr) {
		maximg_addr = maximgAddr;
	}
	public String getMinimg_addr() {
		return minimg_addr;
	}
	public void setMinimg_addr(String minimgAddr) {
		minimg_addr = minimgAddr;
	}
	public String getImg_dcrip() {
		return img_dcrip;
	}
	public void setImg_dcrip(String imgDcrip) {
		img_dcrip = imgDcrip;
	}
	public AdPhoto(String imgId, String goodsId, String midimgAddr,
			String maximgAddr, String minimgAddr, String imgDcrip) {
		super();
		img_id = imgId;
		goods_id = goodsId;
		midimg_addr = midimgAddr;
		maximg_addr = maximgAddr;
		minimg_addr = minimgAddr;
		img_dcrip = imgDcrip;
	}
	public AdPhoto() {
		super();
	}
	
}
