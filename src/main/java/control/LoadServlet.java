package control;
import dao.admin.AccountDAO;
import model.User;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.util.List;


@WebServlet(name = "LoadServlet", urlPatterns = {"/LoadServlet"})
public class LoadServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        AccountDAO dao = new AccountDAO();
        List<User> list = dao.getAccountList();
//        System.out.println(list);
        request.setAttribute("list", list);
        request.getRequestDispatcher("adminManageCustomer.jsp").forward(request, response);

//        request.setAttribute("listS", list);
//        request.getRequestDispatcher("listStudent.jsp").forward(request, response);
//        request.setAttribute("list", list);
//        request.getRequestDispatcher("adminManageCustomer.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>



}
