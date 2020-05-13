/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projeto02.classes;
import java.util.ArrayList;
import projeto02.classes.Suppliers;
/**
 *
 * @author Vinicius
 */
public class DbSuppliers {
    private static ArrayList<Suppliers> supplier;
    public static ArrayList<Suppliers> getSuppliers() {
        if (supplier == null) {
            Suppliers company = new Suppliers();
            company.setAttributes("Company", "Commercial", "00000000000000", "00000000000", "Address, number 0000", "company@business.com");
            supplier.add(company);
        }
        return supplier;
    }
}
