<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head><meta charset="UTF-8"><title>管理员登录</title><link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css"></head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell"><section class="panel"><h2>管理员登录</h2><form data-demo-form="true" action="${pageContext.request.contextPath}/admin/login" method="post" class="form-grid"><div class="field"><label>管理员账号</label><input name="adminName"></div><div class="field"><label>密码</label><input name="password" type="password"></div><div class="action-row"><button class="primary" type="submit">登录</button></div></form></section></main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>
