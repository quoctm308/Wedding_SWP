//
//package control;
//
//import dao.StudentDAO;
//import dao.admin.AccountDAO;
//import javax.servlet.*;
//import javax.servlet.annotation.*;
//import javax.servlet.http.*;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.ArrayList;
///**
// *
// * @author FPTSHOP
// */
//@WebServlet(name = "AddClassControl", urlPatterns = {"/AddClassControl"})
//public class AddClassControl extends HttpServlet {
//
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//    }
//
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//
//        String className = request.getParameter("cName");
//        AccountDAO DAO = new AccountDAO();
////        DAO.addClass(className);
////        response.sendRedirect("DisplayClass");
//        String url = "";
//
//        //thuc hien bao loi
//        try (PrintWriter out = response.getWriter()) {
//            if (className == null) {
//                request.setAttribute("MESSAGE", "Student Name is empty!");
//            } else if (duplicationName(className,DAO.getAllClass())) {
//                request.setAttribute("MESSAGE", "Exist Class Name " + className);
//                url = "addClass.jsp";
//            } else {
//                url = "LoadServlet";
//                DAO.addClass(className);
//                response.sendRedirect("DisplayClass");
//                return;
//            }
//            System.out.println("url: " + url);
//            RequestDispatcher rd = request.getRequestDispatcher(url);
//            rd.forward(request,response);
//
//
//
//        }
//    }
//
//
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//    boolean duplicationName(String name, ArrayList<Lop> ls) {
//        for (int i = 0; i < ls.size(); i++) {
//            if (ls.get(i).getClassName().equalsIgnoreCase(name)) {
//                return true;
//            }
//        }
//        return false;
//    }
//}
