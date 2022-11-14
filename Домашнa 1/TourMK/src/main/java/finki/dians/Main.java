package finki.dians;

import com.opencsv.CSVWriter;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) throws FileNotFoundException {
        ClassLoader loader = Main.class.getClassLoader();
        Scanner scanner = new Scanner(new File("src/main/resources/database.csv");

        Pipe<String> pipe = new Pipe<String>();

        CoordinateFilter coordinateFilter = new CoordinateFilter();
        pipe.addFilter(coordinateFilter);

        NoUrlFilter noUrlFilter = new NoUrlFilter();
        pipe.addFilter(noUrlFilter);

        File file = new File("src/main/resources/databaseFiltered.csv");
        FileWriter outputFile = null;
        try {
            outputFile = new FileWriter(file);
            CSVWriter writer = new CSVWriter(outputFile);

            String[] header = {"link","name","mk_name","category","description","rating","review_count","phone","website","picture"};
            writer.writeNext(header);

            scanner.nextLine();
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine();
                String res = pipe.runFilters(line);
                writer.writeNext(res.split(","));
            }
        }
        catch (IOException e) {
                throw new RuntimeException(e);
        }




    }
}
