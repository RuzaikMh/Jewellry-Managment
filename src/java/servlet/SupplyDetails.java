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
public class SupplyDetails {
    private int InvoiceNo;
    private String Date;
    private String  SupplierName;
    private double Discount;
    private String  PaymentType; 
    private String Category;
    private int Qty;
    private double Weight;
    private double UnitPrice;
    private double Total;
    private String Description;
    private int ID;

    @Override
    public String toString() {
        return "SupplyDetails{" + "InvoiceNo=" + InvoiceNo + ", Date=" + Date + ", SupplierName=" + SupplierName + ", Discount=" + Discount + ", PaymentType=" + PaymentType + ", Category=" + Category + ", Qty=" + Qty + ", Weight=" + Weight + ", UnitPrice=" + UnitPrice + ", Total=" + Total + ", Description=" + Description + ", ID=" + ID + '}';
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getInvoiceNo() {
        return InvoiceNo;
    }

    public void setInvoiceNo(int InvoiceNo) {
        this.InvoiceNo = InvoiceNo;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }

    public String getSupplierName() {
        return SupplierName;
    }

    public void setSupplierName(String SupplierName) {
        this.SupplierName = SupplierName;
    }

    public double getDiscount() {
        return Discount;
    }

    public void setDiscount(double Discount) {
        this.Discount = Discount;
    }

    public String getPaymentType() {
        return PaymentType;
    }

    public void setPaymentType(String PaymentType) {
        this.PaymentType = PaymentType;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String Category) {
        this.Category = Category;
    }

    public int getQty() {
        return Qty;
    }

    public void setQty(int Qty) {
        this.Qty = Qty;
    }

    public double getWeight() {
        return Weight;
    }

    public void setWeight(double Weight) {
        this.Weight = Weight;
    }

    public double getUnitPrice() {
        return UnitPrice;
    }

    public void setUnitPrice(double UnitPrice) {
        this.UnitPrice = UnitPrice;
    }

    public double getTotal() {
        return Total;
    }

    public void setTotal(double Total) {
        this.Total = Total;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }
    
    
    
    
    
}
