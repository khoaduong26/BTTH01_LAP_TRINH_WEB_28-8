<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>topbar</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
        /* Thiết lập cơ bản cho giao diện */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .right-topbar {
            background-color: #ffffff;
            padding: 10px 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        .right-topbar ul {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            margin: 0;
            padding: 0;
            list-style-type: none;
        }

        .right-topbar li {
            margin-left: 15px;
        }

        .right-topbar a {
            color: #333;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        .right-topbar a:hover {
            color: #47B5ED;
        }

        .search-button {
            font-size: 18px;
            color: #333;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .search-button:hover {
            color: #47B5ED;
        }

        .register-link a {
            color: #47B5ED;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        .register-link a:hover {
            color: #333;
        }
    </style>
</head>
<body>
    <c:choose>
        <%-- Kiểm tra nếu không có tài khoản trong session --%>
        <c:when test="${empty sessionScope.account}">
            <div class="right-topbar">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/login">Đăng nhập</a> | <a href="${pageContext.request.contextPath}/register">Đăng ký</a></li>
                    <li><i class="search fa fa-search search-button"></i></li>
                </ul>
            </div>
        </c:when>

        <%-- Nếu có tài khoản trong session --%>
        <c:otherwise>
            <div class="right-topbar">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/member/myaccount">${sessionScope.account.fullName}</a> | <a href="${pageContext.request.contextPath}/logout">Đăng Xuất</a></li>
                    <li><i class="search fa fa-search search-button"></i></li>
                </ul>
            </div>
        </c:otherwise>
    </c:choose>
</body>
</html>