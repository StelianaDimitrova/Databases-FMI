import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.Objects;
import java.util.Scanner;

public class DB2App {
    private Connection connection;
    private Statement statement;
    private ResultSet resultSet;

    public void openConnection() {

        try {
            DriverManager.registerDriver(new com.ibm.db2.jcc.DB2Driver());
        } catch (Exception cnfex) {
            System.out.println("Problem in loading or registering IBM DB2 JDBC driver");
            cnfex.printStackTrace();
        }

        try {
            connection = DriverManager.getConnection("jdbc:db2://62.44.108.24:50000/SAMPLE", "db2admin", "db2admin");
            statement = connection.createStatement();
        } catch (SQLException s) {
            s.printStackTrace();
        }
    }

    public void closeConnection() {
        try {
            if (null != connection) {
                resultSet.close();
                statement.close();
                connection.close();
            }
        } catch (SQLException s) {
            s.printStackTrace();
        }
    }

    public void select(String stmnt, int column) {

        try {
            resultSet = statement.executeQuery(stmnt);
            String result = "";

            while (resultSet.next()) {
                for (int i = 1; i <= column; i++) {
                    result += resultSet.getString(i);

                    if (i == column) result += " \n";
                    else {
                        result += ", ";
                    }
                }
            }

            System.out.println("Executing query: " + stmnt + "\n");
            System.out.println("Result output \n");
            System.out.println("---------------------------------- \n");
            System.out.println(result);

        } catch (SQLException s) {
            s.printStackTrace();
        }
    }

    public void insert(String stmnt) {

        try {
            statement.executeUpdate(stmnt);
        }
        catch (SQLException s) {
            s.printStackTrace();
        }

        System.out.println("Successfully inserted!");
    }

    public void delete(String stmnt) {

        try{
            statement.executeUpdate(stmnt);
        }
        catch (SQLException s){
            s.printStackTrace();
        }

        System.out.println("Successfully deleted!");
    }

    public static void menu()
    {
        System.out.println("1.Select table");
        System.out.println("2.Insert into table");
        System.out.println("3.Delete from table");
        System.out.println("4.Show the categories of all technicians");
        System.out.println("5.Show info about appliance by id");
        System.out.println("6.Find repair by date");
        System.out.println("7.Find customer by phone_number");
        System.out.println("8.Exit");
        System.out.println("\n");
    }

    public static void main(String[] args) {
        DB2App object = new DB2App();
        String stmntSelect = "";
        String stmntInsert = "";
        String stmntDelete = "";

        object.openConnection();

        int choice;
        Scanner input = new Scanner(System.in);

        menu();
        System.out.print("Enter command: ");
        choice = input.nextInt();

        int stopper = 1;

        while (stopper != 0)
        {
            if(choice == 1)
            {
                System.out.print("Table name to select: ");
                String tableName = "";
                tableName = input.next();

                System.out.print("Columns: ");
                String columns = "";
                columns = input.next();

                System.out.print("Columns Count: ");
                int columnsCount;
                columnsCount = input.nextInt();

                stmntSelect = "SELECT " + columns + " FROM FN4MI0700044." + tableName;
                object.select(stmntSelect, columnsCount);

                System.out.print("Enter command: ");
                choice = input.nextInt();
            }
            else if (choice == 2)
            {
                System.out.print("Table name to insert: ");
                String tableName = "";
                tableName = input.next();

                if(Objects.equals(tableName, "TECHNICIAN"))
                {
                    System.out.print("Name: ");
                    String name = "";
                    name = input.next();

                    System.out.print("EGN: ");
                    String egn = "";
                    egn = input.next();

                    System.out.print("Category: ");
                    String category = "";
                    category = input.next();

                    stmntInsert = " INSERT INTO FN4MI0700044."+ tableName + "(NAME, EGN, TECHNICIAN_CATEGORY)"
                            + " VALUES ('" + name + "','" + egn + "','" + category + "')";
                }
                else if (Objects.equals(tableName, "CUSTOMER"))
                {
                    System.out.print("Name: ");
                    String name = "";
                    name = input.next();

                    System.out.print("PHONE NUMBER: ");
                    String number = "";
                    number = input.next();

                    stmntInsert = " INSERT INTO FN4MI0700044."+ tableName + "(NAME, PHONE_NUMBER)"
                            + " VALUES ('" + name + "','" + number + "')";
                }
                else if (Objects.equals(tableName, "APPLIANCE")) {
                    System.out.print("Name: ");
                    String name = "";
                    name = input.next();

                    System.out.print("Model: ");
                    String model = "";
                    model = input.next();

                    System.out.print("Category: ");
                    String category = "";
                    category = input.next();

                    System.out.print("Manufacturer: ");
                    String manufacturer = "";
                    manufacturer = input.next();

                    System.out.print("Year: ");
                    int year = input.nextInt();

                    System.out.print("PHONE NUMBER: ");
                    String number = "";
                    number = input.next();

                    stmntInsert = " INSERT INTO FN4MI0700044."+ tableName + "(NAME, MODEL, APPLIANCE_CATEGORY, MANUFACTURER, YEAR_OF_MANUFACTURE, CUSTOMER_PHONE_NUMBER)"
                            + " VALUES ('" + name + "','" + model + "','" + category + "','"+ manufacturer + "','" + year + "','" + number + "')";
                }

                object.insert(stmntInsert);

                System.out.print("Enter command: ");
                choice = input.nextInt();
                System.out.println("\n");
            }
            else if (choice == 3)
            {
                System.out.print("Table name to delete from: ");
                String tableName = "";
                tableName = input.next();

                System.out.print("Name: ");
                String name = "";
                name = input.next();

                stmntDelete = "DELETE FROM FN4MI0700044."+ tableName +" WHERE NAME = " + "'" + name + "' ";
                object.delete(stmntDelete);

                System.out.print("Enter command: ");
                choice = input.nextInt();
                System.out.println("\n");
            }
            else if (choice == 4)
            {
                stmntSelect = "SELECT TECHNICIAN_CATEGORY FROM FN4MI0700044.TECHNICIAN";
                object.select(stmntSelect, 1);

                System.out.print("Enter command: ");
                choice = input.nextInt();
            }
            else if (choice == 5)
            {
                System.out.print("ID: ");
                int id = input.nextInt();

                stmntSelect = "SELECT * FROM FN4MI0700044.APPLIANCE WHERE APPLIANCE_ID = " + id;
                object.select(stmntSelect, 7);

                System.out.print("Enter command: ");
                choice = input.nextInt();
            }
            else if (choice == 6)
            {
                System.out.print("Date: ");
                String date = input.next();

                stmntSelect = "SELECT * FROM FN4MI0700044.REPAIR WHERE DATE = '" + date + "'";

                object.select(stmntSelect, 4);
                System.out.println("APPLIANCE_ID, TECHNICIAN_ID, DATE, PRICE");
                System.out.println("\n");
                System.out.print("Enter command: ");
                choice = input.nextInt();
            }
            else if (choice == 7)
            {
                System.out.print("PHONE NUMBER: ");
                String number = input.next();

                stmntSelect = "SELECT * FROM FN4MI0700044.CUSTOMER WHERE PHONE_NUMBER = '" + number + "'";
                object.select(stmntSelect, 2);

                System.out.print("Enter command: ");
                choice = input.nextInt();
            }
            else if (choice == 8)
            {
                System.out.println("Exit!");
                stopper = 0;
            }
        }

        object.closeConnection();
    }
}
