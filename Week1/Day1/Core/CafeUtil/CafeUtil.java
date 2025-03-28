import java.util.ArrayList;
public class CafeUtil {
    public int getStreakGoal() {
        int total = 0;
        for (int i = 0; i<= 10; i++) {
            total += i;
        }
        return total;
    }
    public double getOrderTotal(double[] prices) {
        double total = 0;
        for (double price : prices) {
            total += price;

        }
        return total;
    }
    public void displayMenu(ArrayList<String> menuItems) {
        for (int i = 0; i < menuItems.size(); i++) {
            System.out.println(i + " " + menuItems.get(i));
        }
    }
    public void addCustomer(ArrayList<String> customers) {
        System.err.println("Please enter your name:");
        String username = System.console().readLine();

        System.out.println("Hello, " + username + "!");
        System.out.println("There are " + customers.size() + " people in ur line ") ;
        customers.add(username);
        System.out.println(customers);
    }
}