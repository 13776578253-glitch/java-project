<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header class="site-header">
    <a class="brand" href="${pageContext.request.contextPath}/index.jsp">健康监测与智能分析平台</a>
    <nav class="nav">
        <a href="${pageContext.request.contextPath}/page?view=home">健康总览</a>
        <a href="${pageContext.request.contextPath}/page?view=body">体重体脂</a>
        <a href="${pageContext.request.contextPath}/page?view=chronic">慢性病指标</a>
        <a href="${pageContext.request.contextPath}/page?view=lifestyle">运动睡眠</a>
        <a href="${pageContext.request.contextPath}/page?view=report">健康报告</a>
        <a href="${pageContext.request.contextPath}/admin?action=home">管理员</a>
    </nav>
</header>
