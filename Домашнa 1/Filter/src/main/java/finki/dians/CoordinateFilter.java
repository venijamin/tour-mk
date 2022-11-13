package finki.dians;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CoordinateFilter implements Filter<String> {

    @Override
    public String execute(String input) {
        String url = input.split(",")[0];

        final String lat_regex = "(?<=!3d).+?(?=!)";
        final String lon_regex = "(?<=!4d).+?(?=!)";

        final Pattern lat_pattern = Pattern.compile(lat_regex, Pattern.MULTILINE);
        final Pattern lon_pattern = Pattern.compile(lon_regex, Pattern.MULTILINE);

        final Matcher lat_matcher = lat_pattern.matcher(url);
        final Matcher lon_matcher = lon_pattern.matcher(url);



        String lat = "";
        while (lat_matcher.find()) {
            lat = lat_matcher.group(0);
        }
        String lon = "";
        while (lon_matcher.find()) {
            lon = lon_matcher.group(0);
        }


        String res="";
        res += lat + "|" + lon + ",";

        String[] inputArr = input.split(",");
        for (String part : inputArr) {
            res += part + ",";
        }
        return res;


    }
}
