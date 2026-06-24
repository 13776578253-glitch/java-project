<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>健康档案</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <section class="panel">
        <h2>健康档案管理</h2>
        <p class="muted">对应 chenqingyuan 包：维护长期基础健康信息，为 BMI、基础代谢、预测和建议提供依据。</p>
        <form data-demo-form="true" action="${pageContext.request.contextPath}/profile" method="post" class="form-grid">
            <div class="field"><label>年龄</label><input name="age" type="number" min="1"></div>
            <div class="field"><label>性别</label><select name="gender"><option>女</option><option>男</option></select></div>
            <div class="field"><label>身高 cm</label><input name="height" type="number" step="0.1"></div>
            <div class="field"><label>目标体重 kg</label><input name="targetWeight" type="number" step="0.1"></div>
            <div class="field" style="grid-column: 1 / -1;"><label>基础情况与慢性病记录</label><textarea name="description"></textarea></div>
            <div class="action-row"><button class="primary" type="submit">保存档案</button></div>
        </form>
    </section>
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>
