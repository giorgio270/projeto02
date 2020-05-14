/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projeto02.classes;
import java.util.ArrayList;

/**
 *
 * @author Vinicius
 */
public class DbSupplier {
    private static ArrayList<Supplier> supplier;
    public static ArrayList<Supplier> getSuppliers() {
        if (supplier == null) {
            supplier = new ArrayList<>();
            Supplier company = new Supplier();
            company.setAttributes("Company", "Commercial", "0000000000/0000", "company@business.com", "11-2222-3333", "Av Paulista, n10, Sp - Sp");
            supplier.add(company);
        }
        return supplier;
    }
}
