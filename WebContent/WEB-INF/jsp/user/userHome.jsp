<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>用户首页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <section class="panel">
        <h2>用户功能首页</h2>
        <% if (request.getAttribute("message") != null) { %>
        <div class="notice"><%= request.getAttribute("message") %></div>
        <% } %>
        <p class="muted">从这里进入健康档案、数据录入、历史查询、智能建议和预测分析。</p>
    </section>
    <jsp:include page="/WEB-INF/jsp/common/menu.jsp" />
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
</body>
</html>
