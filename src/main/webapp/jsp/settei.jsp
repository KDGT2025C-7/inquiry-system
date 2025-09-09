<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:url var="settei" value="/settei" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${settei}" onsubmit="return validateForm()" method="post"> 
<h1><c:out value='${tigau}' default='' /></h1>
<p> 
            <label for="namae">あいことば:</label> 
            <h4><c:out value='${namae}' default='' /></h4>
            <input type="hidden" id="namae" name="namae" value="<c:out value='${namae}' default='' />"> 
             <span class="error-message"></span>
        </p> 
        <p> 
            <label for="name">名前:</label> 
            <input type="text" id="name" name="name" value="<c:out value='${name}' default='' />">  
             <span class="error-message"></span>
        </p> 
        <p> 
            <label for="mail">メール:</label> 
            <input type="text" id="mail" name="mail" value="<c:out value='${mail}' default='' />">  
             <span class="error-message"></span>
        </p> 
        <p> 
            <label for="pass0">現在のパスワード:</label> 
            <input type="text" id="pass0" name="pass0">  
             <span class="error-message"></span>
        </p> 
        <p> 
            <label for="pass">パスワード:</label> 
            <input type="text" id="pass" name="pass">  
             <span class="error-message"></span>
        </p> 
        <p> 
            <label for="pass2">パスワード(確認):</label> 
            <input type="text" id="pass2" name="pass2">  
             <span class="error-message"></span>
        </p>  
        <p> 
            <label for="ope">管理者コード:</label> 
            <input type="text" id="ope" name="ope" value="<c:out value='${ope}' default='' />">  
             <span class="error-message"></span>
        </p> 
<div class="button-group"> 
            <input type="submit" value="確認"> 
        </div> 
    </form> 
    <a href = "../inquiry-system/inquiry">戻る</a>
        <script> 
function validateForm() { 
    let isValid = true; 
    const namae = document.getElementById('namae');
    const name = document.getElementById('name'); 
    const mail = document.getElementById('mail'); 
    const pass = document.getElementById('pass'); 
    const pass2 = document.getElementById('pass2'); 
    const ope = document.getElementById('ope');
 
    document.querySelectorAll('.error-message').forEach(el => el.textContent = '');  
 
    if (mail.value.trim() === '') {  
    } else if (!/^[\w.%+-]+@[\w.-]+\.[A-Za-z]{2,}$/.test(mail.value)) { 
        mail.nextElementSibling.textContent = '有効なメールアドレスを入力してください。'; 
        isValid = false; 
    } 
	if (pass.value.trim() !== pass2.value.trim()){
		pass2.nextElementSibling.textContent = 'パスワード不一致';
		isValid = false;
		}
 
    return isValid; 
} 
</script>
</body>
</html>