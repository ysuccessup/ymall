package com.ymall.web.pojo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class Item {

    private Long id;

    private String title;

    private String sellPoint;

    private Long price;

    private Integer num;

    private String image;
    
    private String bigImage;

    private Long cid;

    private Integer status;

    private Date created;

    private Date updated;

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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSellPoint() {
        return sellPoint;
    }

    public void setSellPoint(String sellPoint) {
        this.sellPoint = sellPoint;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Long getCid() {
        return cid;
    }

    public void setCid(Long cid) {
        this.cid = cid;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
    
    public String getBigImage() {
		return bigImage;
	}

	public void setBigImage(String bigImage) {
		this.bigImage = bigImage;
	}

	@JsonIgnore
    public String[] getImages() {
        if (null != getImage()) {
            return getImage().split(",");
        }
        return null;
    }
	
	@JsonIgnore
    public String[] getBigImages() {
        if (null != getBigImage()) {
            return getBigImage().split(",");
        }
        return null;
    }

    @Override
    public String toString() {
        return "Item [id=" + id + ", title=" + title + ", sellPoint=" + sellPoint + ", price=" + price
                + ", num=" + num + ", image=" + image + ",bigImage=\" + bigImage + \", cid=" + cid + ", status="
                + status + ", created=" + getCreated() + ", updated=" + getUpdated() + "]";
    }

}
