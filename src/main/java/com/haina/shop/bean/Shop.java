package com.haina.shop.bean;

public class Shop {
    private Integer shopId;

    private String shopName;

    private String shopType;

    private String shopBoss;

    private String shopEmail;

    private String shopTel;

    private String shopAddress;

    private String shopDetaiAddress;

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName == null ? null : shopName.trim();
    }

    public String getShopType() {
        return shopType;
    }

    public void setShopType(String shopType) {
        this.shopType = shopType == null ? null : shopType.trim();
    }

    public String getShopBoss() {
        return shopBoss;
    }

    public void setShopBoss(String shopBoss) {
        this.shopBoss = shopBoss == null ? null : shopBoss.trim();
    }

    public String getShopEmail() {
        return shopEmail;
    }

    public void setShopEmail(String shopEmail) {
        this.shopEmail = shopEmail == null ? null : shopEmail.trim();
    }

    public String getShopTel() {
        return shopTel;
    }

    public void setShopTel(String shopTel) {
        this.shopTel = shopTel == null ? null : shopTel.trim();
    }

    public String getShopAddress() {
        return shopAddress;
    }

    public void setShopAddress(String shopAddress) {
        this.shopAddress = shopAddress == null ? null : shopAddress.trim();
    }

    public String getShopDetaiAddress() {
        return shopDetaiAddress;
    }

    public void setShopDetaiAddress(String shopDetaiAddress) {
        this.shopDetaiAddress = shopDetaiAddress == null ? null : shopDetaiAddress.trim();
    }
}