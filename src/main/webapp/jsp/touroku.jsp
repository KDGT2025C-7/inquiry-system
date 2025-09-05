<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:url var="touroku" value="/touroku" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${touroku}" onsubmit="return validateForm()" method="post"> 
        <p> 
            <label for="namae">あいことば:</label> 
            <input type="text" id="namae" name="namae">  
             <span class="error-message"></span>
        </p> 
       <!-- <p> 
            <label for="email">メールアドレス:</label> 
            <input type="email" id="email" name="email" value="<c:out value='${inquiry.email}'/>"> 
            <span class="error-message"><c:out value='${errors.email}' /></span> 
        </p> 
        <p> 
            <label for="content">内容:</label> 
            <textarea id="content" name="content" rows="5" cols="40"><c:out value='${inquiry.content}' 
/></textarea> 
            <span class="error-message"><c:out value='${errors.content}' /></span> 
        </p> 
        <p> 
            <label for="attachment">添付ファイル:</label> 
            <input type="file" id="attachment" name="attachment"> 
            <span class="error-message"><c:out value='${errorMessage}' /></span> 
        </p> 
        <label for="newaaa">宛先:</label> 
        <select id="status-${status.count}" name="newaaa"> 
                                <option value="ヘルプデスク" selected>ヘルプデスク</option> 
                                <option value="先生へ" >先生へ</option> 
                                <option value="店舗へ" >店舗へ</option> 
                                <option value="自治体へ" >自治体へ</option> 
                                <option value="宿題" >宿題</option>
                                <option value="バグ" >バグ</option>
                                <option value="資料請求" >資料請求</option>
                            </select> 
        <p> 
            <label for="captcha">スパム対策: <c:out value='${captchaQuestion}' /></label> 
            <input type="text" id="captcha" name="captcha" required> 
            <span class="error-message"><c:out value='${errors.captcha}' /></span> 
        </p> 
        -->
        <div class="button-group"> 
            <input type="submit" value="確認"> 
        </div> 
    </form> 
    
    <script> 
    const waoonList = [
        <c:forEach var="namae" items="${waoon}" varStatus="status">
            "${namae}"<c:if test="${!status.last}">,</c:if>
        </c:forEach>
    ];
function validateForm() { 
    let isValid = true; 
    const namae = document.getElementById('namae');  
    const errorMessage = namae.nextElementSibling;
    document.querySelectorAll('.error-message').forEach(el => el.textContent = ''); 
 
    if (!namae.value || namae.value.trim() === '') { 
        namae.nextElementSibling.textContent = '名前は必須です。'; 
        isValid = false; 
    } 
    else if (waoonList.includes(namae.value.trim())) { 
        errorMessage.textContent = 'このあいことばは既に登録されています。'; 
        isValid = false; 
    } 
    return isValid; 
} 
</script> 
</body>
</html>