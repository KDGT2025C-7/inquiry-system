<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:url var="password" value="/password" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${a}</h1>
<form action="${password}" method="post"> 
	<h4>合言葉:<c:out value='${namae}' default='' /></h4>
	<input type="hidden" name="namae" value=${namae}>  
        <p> 
            <label for="password">passwordを入力してください</label> 
            <input type="text" id="password" name="password">  
        </p> 
        <div class="button-group"> 
            <input type="submit" value="確認"> 
        </div> 
    </form> 
</body>
</html>