<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href = "../inquiry-system/inquiry">戻る</a>
<a href = "../inquiry-system/csv">csv(自分a用)</a>
<form action="../inquiry-system/csv" method="post" style="display:inline;"> 
                            <input type="text" name="aaaa" value="COPY qqa TO '任意の保存先' WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',')">
                            <input type="submit" value="コピー" class="button secondary"> 
 </form> 
<c:choose> 
            <c:when test="${not empty inquiries}"> 
                <c:forEach var="inquiry" items="${inquiries}" varStatus="status"> 
                    <div class="inquiry-item" id="inquiry-${inquiry.qqaKey}">
                        <h3>お問い合わせ #${status.count}</h3> 
                        <p><strong>名前:</strong> <c:out value="${inquiry.name}"/></p> 
                        <p><strong>メールアドレス:</strong> <c:out value="${inquiry.email}"/></p> 
                        <p><strong>宛先:</strong> <c:out value="${inquiry.aaa}"/></p>
                        <p><strong>内容:</strong></p> 
                        <pre><c:out value="${inquiry.content}"/></pre> 
                        <p><strong>添付ファイル:</strong> 
							<c:choose>
                                <c:when test="${not empty inquiry.attachmentFileName}">
                                    <a href="../inquiry-system/inquiry?action=download&qqaKey=${inquiry.qqaKey}" target="_blank">
                                        ${inquiry.attachmentFileName}
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    なし
                                </c:otherwise>
                            </c:choose>
                        </p> 
                        <p><strong>ステータス:</strong> <c:out value="${inquiry.status}"/></p> 
                        <form action="../inquiry-system/kanri" method="post" style="display:inline;"> 
                            <input type="hidden" name="action" value="updateStatus"> 
                            <input type="hidden" name="index" value="${inquiry.qqaKey}"> 
                            <input type="hidden" name="returnAnchor" value="inquiry-${inquiry.qqaKey}">
                            <label for="status-${status.count}">ステータス変更:</label> 
                            <select id="status-${status.count}" name="newStatus"> 
                                <option value="新規" <c:if test="${inquiry.status == '新規'}">selected</c:if>>新規</option> 
                                <option value="対応中" <c:if test="${inquiry.status == '対応中'}">selected</c:if>>対応中</option> 
                                <option value="完了" <c:if test="${inquiry.status == '完了'}">selected</c:if>>完了</option> 
                            </select> 
                            <input type="submit" value="更新" class="button secondary"> 
 </form> 
 </c:forEach>
 </c:when>
 </c:choose>
</body>
</html>