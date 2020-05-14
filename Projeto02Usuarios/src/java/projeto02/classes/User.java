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
public class User {
    
    private String name;
    private String cpf;
    private String rg;
    private String email;
    private String phone;
    private String address;
    
    public void setAttributes(String name, String cpf, String rg, String email,String phone, String address ) {
        this.setName(name);
        this.setCpf(cpf);
        this.setRg(rg);
        this.setEmail(email);
        this.setPhone(phone);
        this.setAddress(address);
          
    }

    public String getName() {
        return name;
    }

    public void setName(String nome) {
        this.name = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }    
       
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
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

