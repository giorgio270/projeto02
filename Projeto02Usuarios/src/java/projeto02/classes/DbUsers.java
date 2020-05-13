/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projeto02.classes;
import java.util.ArrayList;
import projeto02.classes.Users;
/**
 *
 * @author Vinicius
 */
public class DbUsers {
    private static ArrayList<Users> user;
    public static ArrayList<Users> getUsers() {
        if (user == null) {
            Users person = new Users();
            person.setAttributes("Person", "00000000000", "000000000", "00000000000", "Address, number 0000", "person@test.com");
            user.add(person);
        }
        return user;
    }
}
