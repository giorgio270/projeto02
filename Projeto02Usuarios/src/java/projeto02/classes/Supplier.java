/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projeto02.classes;

/**
 *
 * @author josue
 */
public class Supplier {
    
    private String name, commercialName, cnpj, email, phone, address;
    
    public void setAttributes (String name, String commercialName, String cnpj, String email, String phone, String address){
        
        this.setName(name);
        this.setCommercialName(commercialName);
        this.setCnpj(cnpj);
        this.setEmail(email);
        this.setPhone(phone);
        this.setAddress(address);
        
        
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCommercialName() {
        return commercialName;
    }

    public void setCommercialName(String commercialName) {
        this.commercialName = commercialName;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}

