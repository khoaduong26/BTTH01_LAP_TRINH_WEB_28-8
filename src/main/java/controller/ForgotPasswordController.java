package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.UserService;
import service.*;
public class ForgotPasswordController {
	private UserService userService = new UserServiceImpl();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("forgot-password.jsp").forward(req, resp); 
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        
        String email = req.getParameter("email");
        String alertMsg = "";

        if (email == null || email.trim().isEmpty()) {
            alertMsg = "Vui lòng nhập email!";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher("forgot-password.jsp").forward(req, resp); 
            return;
        }

        // Kiểm tra email có tồn tại trong hệ thống
        if (!userService.checkExistEmail(email)) {
            alertMsg = "Email không tồn tại trong hệ thống!";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher("forgot-password.jsp").forward(req, resp); 
            return;
        }
        alertMsg = "Hướng dẫn reset mật khẩu đã được gửi đến email: " + email;
        req.setAttribute("success", alertMsg);
        req.getRequestDispatcher("forgot-password.jsp").forward(req, resp); 
    }
}
