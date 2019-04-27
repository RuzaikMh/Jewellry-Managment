package servlet;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Ruzaik Mh
 */
public class Supplier {

    @Override
    public String toString() {
        return "Supplier{" + "name=" + name + ", OpeningBalance=" + OpeningBalance + ", OpeningType=" + OpeningType + ", Pnumber=" + Pnumber + ", Anumber=" + Anumber + ", email=" + email + ", Address=" + Address + ", city=" + city + ", accName=" + accName + ", accNumber=" + accNumber + '}';
    }
    
    private String name;
    private double OpeningBalance;
    private String OpeningType;
    private int Pnumber;
    private int Anumber;
    private String email;
    private String Address;
    private String city;
    private String accName;
    private String accNumber;
    private int ID;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setOpeningBalance(double OpeningBalance) {
        this.OpeningBalance = OpeningBalance;
    }

    public void setOpeningType(String OpeningType) {
        this.OpeningType = OpeningType;
    }

    public void setPnumber(int Pnumber) {
        this.Pnumber = Pnumber;
    }

    public void setAnumber(int Anumber) {
        this.Anumber = Anumber;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setAccName(String accName) {
        this.accName = accName;
    }

    public void setAccNumber(String accNumber) {
        this.accNumber = accNumber;
    }

    public String getName() {
        return name;
    }

    public double getOpeningBalance() {
        return OpeningBalance;
    }

    public String getOpeningType() {
        return OpeningType;
    }

    public int getPnumber() {
        return Pnumber;
    }

    public int getAnumber() {
        return Anumber;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return Address;
    }

    public String getCity() {
        return city;
    }

    public String getAccName() {
        return accName;
    }

    public String getAccNumber() {
        return accNumber;
    }
        
}
