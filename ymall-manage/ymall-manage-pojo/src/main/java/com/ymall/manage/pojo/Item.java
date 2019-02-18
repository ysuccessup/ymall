package com.ymall.manage.pojo;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.ymall.common.po.BasePojo;

@Table(name = "tb_item")
public class Item extends BasePojo{
    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
    private String title;
    
    @Column(name = "sell_point")
    private String sellPoint;
    
    private Long price;
    
    private Integer num;
    
    private String image;
    
    @Column(name = "big_image")
    private String bigImage;
    
    private Long cid;
    
    private Integer status;
    
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

	@Override
    public String toString() {
        return "Item [id=" + id + ", title=" + title + ", sellPoint=" + sellPoint + ", price=" + price
                + ", num=" + num + ", image=" + image + ", cid=" + cid + ", status="
                + status + ", created=" + getCreated() + ", updated=" + getUpdated() + "]";
    }

}
