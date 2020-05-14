package com.haina.shop.bean;

public class User {
    private Integer userId;

    private String userName;

    private String userTel;

    private String userPassword;
    
    
    public User() {
		super();
	}

	public User(Integer userId, String userName, String userTel, String userPassword) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userTel = userTel;
		this.userPassword = userPassword;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userTel=" + userTel + ", userPassword="
				+ userPassword + "]";
	}

	public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel == null ? null : userTel.trim();
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword == null ? null : userPassword.trim();
    }
}