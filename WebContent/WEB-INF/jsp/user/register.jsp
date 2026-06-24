<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <section class="panel">
        <h2>用户注册</h2>
        <form data-demo-form="true" action="${pageContext.request.contextPath}/register" method="post" class="form-grid">
            <div class="field">
                <label for="username">用户名</label>
                <input id="username" name="username" required>
            </div>
            <div class="field">
                <label for="password">密码</label>
                <input id="password" name="password" type="password" required>
            </div>
            <div class="field">
                <label for="gender">性别</label>
                <select id="gender" name="gender">
                    <option value="female">女</option>
                    <option value="male">男</option>
                </select>
            </div>
            <div class="field">
                <label for="age">年龄</label>
                <input id="age" name="age" type="number" min="1">
            </div>
            <div class="action-row">
                <button class="primary" type="submit">注册</button>
                <a class="button" href="${pageContext.request.contextPath}/login">返回登录</a>
            </div>
        </form>
    </section>
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>
