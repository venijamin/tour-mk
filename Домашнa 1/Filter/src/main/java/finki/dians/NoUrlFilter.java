package finki.dians;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.Collectors;

public class NoUrlFilter implements Filter<String> {
    @Override
    public String execute(String input) {

        String[] inputArr = input.split(",");

        ArrayList<String> resArr = (ArrayList<String>) Arrays.stream(inputArr).collect(Collectors.toList());
        resArr.removeIf(r->r.contains("http"));

        String res = "";
        for (String part :
                resArr) {
            res+=part+",";

        }

        return res;
    }
}
