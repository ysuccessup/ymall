package com.ymall.manage.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "tb_admin", schema="smdb")
public class Admin implements Serializable{
	
	//columns START

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID", nullable = true, length = 10)
	private String id;

	@Column(name = "ADMIN_USER", nullable = true, length = 32)
	private String adminUser;

	@Column(name = "ADMIN_PASS", nullable = true, length = 32)
	private String adminPass;

	@Column(name = "ADMIN_sEMAIL", nullable = true, length = 50)
	private String adminEmail;
	
	@Temporal(TemporalType.DATE)
	private Date logintime;
	
	@Column(name = "LOGINIP", nullable = true, length = 20)
	private String loginip;
	
	@Column(name = "CREATETIME", nullable = true, length = 10)
	private String createtime;
	
	//columns END
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAdminUser() {
		return adminUser;
	}

	public void setAdminUser(String adminUser) {
		this.adminUser = adminUser;
	}

	public String getAdminPass() {
		return adminPass;
	}

	public void setAdminPass(String adminPass) {
		this.adminPass = adminPass;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public Date getLogintime() {
		return logintime;
	}

	public void setLogintime(Date logintime) {
		this.logintime = logintime;
	}

	public String getLoginip() {
		return loginip;
	}

	public void setLoginip(String loginip) {
		this.loginip = loginip;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	
}


