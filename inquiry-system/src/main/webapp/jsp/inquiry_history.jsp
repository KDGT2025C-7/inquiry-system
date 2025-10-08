<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html> 
<html lang="ja"> 
<head> 
    <meta charset="UTF-8"> 
    <title>お問い合わせ履歴</title> 
    <link rel="stylesheet" href="style.css"> 
</head> 
<body> 
    <div class="container"> 
        <h1>お問い合わせ履歴</h1> 
        <c:choose> 
            <c:when test="${not empty inquiries}"> 
                <c:forEach var="inquiry" items="${inquiries}" varStatus="status"> 
                    <div class="inquiry-item">
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
                    </div> 
                    <hr> 
                </c:forEach> 
            </c:when> 
            <c:otherwise> 
                <p>まだお問い合わせはありません。(ゲスト投稿は表示されません)</p> 
            </c:otherwise> 
        </c:choose> 
 
        <div class="button-group"> 
            <a href="../inquiry-system/inquiry" class="button secondary">お問い合わせフォームに戻る</a> 
        </div> 
    </div> 
</body> 
</html>