/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

/**
 *
 * @author Ruzaik Mh
 */

public class productdetails {

	
	private String productid;
	private String productname;
	private Double productprice;
	private String category;
	private int qty;
	private Double weight;
	private String description;
	private String picture;

    @Override
    public String toString() {
        return "productdetails{" + "productid=" + productid + ", productname=" + productname + ", productprice=" + productprice + ", category=" + category + ", qty=" + qty + ", weight=" + weight + ", description=" + description + ", picture=" + picture + '}';
    }
	
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public Double getProductprice() {
		return productprice;
	}
	public void setProductprice(Double productprice) {
		this.productprice = productprice;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public Double getWeight() {
		return weight;
	}
	public void setWeight(Double weight) {
		this.weight = weight;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	
	
	
	
	
	
	
}
