package ra.demo_jstl;

import ra.demo_jstl.entity.DataProduct;
import ra.demo_jstl.entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "ControlProducts", value = "/product-process")
public class ProductController extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");

        switch (action){
            case "Add":
                String id = request.getParameter("proId");
                String name = request.getParameter("proName");
                String producer = request.getParameter("producer");
                int yearMaking = Integer.parseInt(request.getParameter("yearMaking"));
                SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
                Date expireDate;
                try {
                    expireDate = sf.parse(request.getParameter("expireDate"));
                } catch (ParseException e) {
                    throw new RuntimeException(e);
                }
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                double price = Double.parseDouble(request.getParameter("price"));

                Product p = new Product(id,name,producer,yearMaking,expireDate,quantity,price);
                DataProduct.products.add(p);

                request.setAttribute("success","Thêm mới thành công!");
                request.setAttribute("list", DataProduct.products);
                request.getRequestDispatcher("listProduct.jsp").forward(request,response);
                break;
            case "Edit":
                break;
            case "Delete":
                break;
            case "Detail":
                break;
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        doGet(request,response);
    }


    public void destroy() {
    }
}