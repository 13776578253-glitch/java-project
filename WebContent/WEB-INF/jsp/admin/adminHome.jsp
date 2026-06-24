<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head><meta charset="UTF-8"><title>管理员首页</title><link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css"></head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell"><section class="panel"><h2>管理员首页</h2><p class="muted">管理员可查看用户列表、平台统计和基础数据维护入口。</p></section><jsp:include page="/WEB-INF/jsp/common/menu.jsp" /></main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
</body>
</html>
