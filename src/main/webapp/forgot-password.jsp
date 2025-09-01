<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quên Mật Khẩu</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }
        
        .forgot-container {
            background: white;
            border-radius: 12px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 450px;
            overflow: hidden;
        }
        
        .forgot-header {
            background: #4a6bdf;
            color: white;
            padding: 25px;
            text-align: center;
        }
        
        .forgot-header h2 {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 5px;
        }
        
        .forgot-body {
            padding: 25px;
        }
        
        .alert {
            background-color: #ffebee;
            color: #d32f2f;
            padding: 12px;
            border-radius: 6px;
            margin-bottom: 20px;
            border-left: 4px solid #d32f2f;
            font-size: 14px;
        }
        
        .success {
            background-color: #e8f5e9;
            color: #2e7d32;
            padding: 12px;
            border-radius: 6px;
            margin-bottom: 20px;
            border-left: 4px solid #2e7d32;
            font-size: 14px;
        }
        
        .instruction {
            color: #666;
            margin-bottom: 20px;
            font-size: 14px;
            text-align: center;
        }
        
        .input-group {
            margin-bottom: 20px;
            position: relative;
        }
        
        .input-group-addon {
            position: absolute;
            left: 0;
            top: 0;
            height: 100%;
            width: 45px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #f5f5f5;
            border-radius: 6px 0 0 6px;
            color: #555;
            z-index: 1;
        }
        
        .form-control {
            width: 100%;
            padding: 14px 14px 14px 50px;
            border: 2px solid #e0e0e0;
            border-radius: 6px;
            font-size: 16px;
            transition: all 0.3s;
        }
        
        .form-control:focus {
            border-color: #4a6bdf;
            outline: none;
            box-shadow: 0 0 0 3px rgba(74, 107, 223, 0.2);
        }
        
        .btn-submit {
            background: #4a6bdf;
            color: white;
            border: none;
            padding: 14px;
            width: 100%;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s;
            margin-top: 10px;
        }
        
        .btn-submit:hover {
            background: #3a5bd0;
        }
        
        .back-link {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }
        
        .back-link a {
            color: #4a6bdf;
            text-decoration: none;
            font-weight: 600;
        }
        
        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="forgot-container">
        <div class="forgot-header">
            <h2>Quên Mật Khẩu</h2>
        </div>
        
        <div class="forgot-body">
            <c:if test="${not empty alert}">
                <div class="alert">
                    <i class="fas fa-exclamation-circle"></i> ${alert}
                </div>
            </c:if>
            
            <c:if test="${not empty success}">
                <div class="success">
                    <i class="fas fa-check-circle"></i> ${success}
                </div>
            </c:if>
            
            <p class="instruction">Vui lòng nhập email của bạn để nhận hướng dẫn reset mật khẩu.</p>
            
            <form action="<%=path%>/forgot-password" method="post">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fas fa-envelope"></i></span>
                    <input type="email" placeholder="Email đăng ký" name="email" class="form-control" required>
                </div>
                
                <button type="submit" class="btn-submit">
                    <i class="fas fa-paper-plane"></i> Gửi yêu cầu
                </button>
            </form>
            
            <div class="back-link">
                <p><a href="<%=path%>/login">← Quay lại đăng nhập</a></p>
            </div>
        </div>
    </div>
    
    <%-- Script debug --%>
    <script>
        console.log("Context Path: ", "<%=path%>");
    </script>
</body>
</html>