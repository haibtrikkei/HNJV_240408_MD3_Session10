package ra.demo_jstl.entity;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class DataProduct {
    public static List<Product> products = new ArrayList<>();
    static SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
    static {
        try {
            products.add(new Product("p01","Máy tính Dell core i7","Dell",2022, sf.parse("2023-12-21"),20,17000000));
            products.add(new Product("p02","Tủ lạnh Sanyo","Sanyo",2023, sf.parse("2023-12-29"),50,8000000));
            products.add(new Product("p03","Tivi 54 inch","Sam Sung",2022, sf.parse("2023-12-21"),10,12000000));
            products.add(new Product("p04","Máy tính Acer core i5","Acer",2022, sf.parse("2023-09-10"),20,12000000));
            products.add(new Product("p05","Máy tính Asus core i3","Asus",2022, sf.parse("2023-08-11"),20,9000000));
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }
}
