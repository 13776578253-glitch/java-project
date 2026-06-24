<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>用户登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell narrow">
    <section class="panel">
        <h2>用户登录</h2>
        <% if (request.getAttribute("message") != null) { %>
        <div class="notice"><%= request.getAttribute("message") %></div>
        <% } %>
        <form data-demo-form="true" action="${pageContext.request.contextPath}/auth?action=login" method="post" class="form-grid">
            <div class="field">
                <label for="username">用户名</label>
                <input id="username" name="username" required>
            </div>
            <div class="field">
                <label for="password">密码</label>
                <input id="password" name="password" type="password" required>
            </div>
            <div class="action-row">
                <button class="primary" type="submit">登录</button>
                <a class="button" href="${pageContext.request.contextPath}/auth?action=registerPage">注册账号</a>
            </div>
        </form>
    </section>
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>
