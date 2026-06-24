<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head><meta charset="UTF-8"><title>智能辅助建议</title><link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css"></head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<main class="page-shell">
    <section class="panel">
        <h2>智能辅助分析与建议</h2>
        <p class="muted">对应 tanghaoli 包：根据健康档案、历史记录和用户目标生成参考性建议。</p>
        <form data-demo-form="true" action="${pageContext.request.contextPath}/ai" method="post" class="form-grid">
            <div class="field" style="grid-column: 1 / -1;"><label>健康问题</label><textarea name="question" placeholder="例如：最近体重不下降可能是什么原因？"></textarea></div>
            <div class="action-row"><button class="primary" type="submit">生成建议</button></div>
        </form>
    </section>
</main>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>
