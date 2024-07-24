package ra.demo_form_flow;

import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "EmployeeProcess", value = "/EmployeeProcess")
public class EmployeeProcess extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");

        //Thiet lap de xu ly co dau
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        //Lay du lieu tu form xuong
        String id = request.getParameter("empId");
        String name = request.getParameter("empName");
        Boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
        Date birthday = null;
        try {
            birthday = sf.parse(request.getParameter("birthday"));
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        String address = request.getParameter("address");
        String[] languages = request.getParameterValues("language");
        String lang = "";
        for(String l : languages){
            lang +=l+", ";
        }

        lang = lang.substring(0, lang.length()-2);

        //mang du lieu di
        request.setAttribute("empId",id);
        request.setAttribute("empName",name);
        request.setAttribute("gender",gender);
        request.setAttribute("birthday",birthday);
        request.setAttribute("address",address);
        request.setAttribute("language",lang);


        switch (action){
            case "add":
                request.getRequestDispatcher("view_employee.jsp").forward(request,response);
                break;
            case "edit":

                break;
            case "delete":

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