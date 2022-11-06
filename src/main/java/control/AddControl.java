//
//package control;
//
//import model.User;
//import dao.admin.AccountDAO;
//import javax.servlet.*;
//import javax.servlet.annotation.*;
//import javax.servlet.http.*;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.List;
//
///**
// *
// * @author FPTSHOP
// */
//@MultipartConfig
//@WebServlet(name = "AddControl", urlPatterns = {"/add"})
//public class AddControl extends HttpServlet {
//
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        String url = "";
//    }
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//        AccountDAO dao = new AccountDAO();
//        User s = (User) dao.getAccountList();
//        request.setAttribute("c", s);
//        request.getRequestDispatcher(".jsp");
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String url = "";
//        String sname = request.getParameter("name");
//        int sage = Integer.parseInt(request.getParameter("age"));
//        int classID = Integer.parseInt(request.getParameter("classID"));
//
//        //Luu thong tin anh
//        Part photo = request.getPart("image");
//        String path = "image/" + photo.getSubmittedFileName();
//        String filename = request.getServletContext().getRealPath(path);
//
////        Part part = request.getPart("image");
////        String realPath = request.getServletContext().getRealPath("/image");
////        String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
////        if (!Files.exists(Paths.get(realPath))) {
////            Files.createDirectory(Paths.get(realPath));
////        }
////        part.write(realPath + "/" + fileName);
//
//        StudentDAO dao = new StudentDAO();
////        dao.addStudent(sname, classID, sage, path);
////        response.sendRedirect("LoadServlet");
//
//// Thuc hien bao loi len trang jsp
//        try (PrintWriter out = response.getWriter()) {
//            if (sname == null) {
//                request.setAttribute("MESSAGE", "Student Name is empty!");
//            } else if (duplicationName(sname, dao.getStudentList()) || checkAge(sage)) {
//                request.setAttribute("MESSAGE", "Exist Student Name " + sname + " Or Age is invalid! ( 18-50 )");
//                url = "addStudent.jsp";
//            } else {
//                url = "LoadServlet";
//                dao.addStudent(sname, classID, sage, path);
//                response.sendRedirect("LoadServlet");
//                return;
//            }
//            System.out.println("url: " + url);
//            RequestDispatcher rd = request.getRequestDispatcher(url);
//            rd.forward(request, response);
//
//        }
//    }
//
//    //Validate
//    boolean duplicationName(String name, List<Student> ls) {
//        for (int i = 0; i < ls.size(); i++) {
//            if (ls.get(i).getStudentName().equalsIgnoreCase(name)) {
//                return true;
//            }
//        }
//        return false;
//    }
//
//    boolean checkAge(int age) {
//        return age < 18 || age > 50;
//    }
//
//}
