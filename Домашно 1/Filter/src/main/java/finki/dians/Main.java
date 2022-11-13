package finki.dians;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) throws FileNotFoundException {
        ClassLoader loader = Main.class.getClassLoader();
        Scanner scanner = new Scanner(new File(loader.getResource("database.csv").getFile()));

        Pipe<String> pipe = new Pipe<String>();

        CoordinateFilter coordinateFilter = new CoordinateFilter();
        pipe.addFilter(coordinateFilter);

        NoUrlFilter noUrlFilter = new NoUrlFilter();
        pipe.addFilter(noUrlFilter);

        scanner.nextLine();
        while(scanner.hasNextLine()) {
            String line = scanner.nextLine();
            String res = pipe.runFilters(line);
            System.out.println(res);
        }




    }
}
