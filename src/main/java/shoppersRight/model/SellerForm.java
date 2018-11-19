package shoppersRight.model;

import java.awt.Image;

public class SellerForm {
	
	private String productName;
	private int memberCost;
	private int nonMemberCost;
	private int itemNumber;
	private int stockAvailable;
	private int shipsWithin;
	private Image productImage;
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public Image getProductImage() {
		return productImage;
	}
	public void setProductImage(Image productImage) {
		this.productImage = productImage;
	}
	public int getMemberCost() {
		return memberCost;
	}
	public void setMemberCost(int memberCost) {
		this.memberCost = memberCost;
	}
	public int getNonMemberCost() {
		return nonMemberCost;
	}
	public void setNonMemberCost(int nonMemberCost) {
		this.nonMemberCost = nonMemberCost;
	}
	public int getItemNumber() {
		return itemNumber;
	}
	public void setItemNumber(int itemNumber) {
		this.itemNumber = itemNumber;
	}
	public int getStockAvailable() {
		return stockAvailable;
	}
	public void setStockAvailable(int stockAvailable) {
		this.stockAvailable = stockAvailable;
	}
	public int getShipsWithin() {
		return shipsWithin;
	}
	public void setShipsWithin(int shipsWithin) {
		this.shipsWithin = shipsWithin;
	}

}
