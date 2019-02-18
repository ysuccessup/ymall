package com.ymall.sso.pojo;

import java.util.Date;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class User {

	private Long id;

    @Length(min = 2, max = 8, message = "用户名长度为2~8！")
    private String username;

    @JsonIgnore	//转换为json时，此属性值不进行封装
    @Length(min = 6, max = 20, message = "密码长度为6~20！")
    private String password;

    @Length(min = 11, max = 11, message = "手机号长度为11！")
    private String phone;

    @Email(message = "Email格式不正确!")
    private String email;

    private Date created;

    private Date updated;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }

	
}
