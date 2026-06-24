<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head><meta charset="UTF-8"><title>用户管理</title><link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css"></head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell"><section class="panel"><h2>用户管理</h2><p class="muted">对应 buxingchen 包：查看用户列表、账号状态和数据录入情况。</p><table class="table"><tr><th>用户</th><th>状态</th><th>最近录入</th></tr><tr><td>示例用户</td><td>正常</td><td>待接入数据库</td></tr></table></section></main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
</body>
</html>
