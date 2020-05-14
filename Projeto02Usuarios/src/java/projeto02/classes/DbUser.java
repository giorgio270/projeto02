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
public class DbUser {
    private static ArrayList<User> users;
    public static ArrayList<User> getUsers() {
        if (users == null) {
            users = new ArrayList<>();
            User person = new User();
            person.setAttributes("Person", "111111111-11", "22222222-x", "teste@teste.com", "11-3333-3333", "Rua 4, n5, Pg - Sp");
            users.add(person);
        }
        return users;
    }
}
