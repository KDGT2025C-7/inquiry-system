<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:url var="nyusitu" value="/nyusitu" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${nyusitu}" onsubmit="return validateForm()" method="post"> 
        <p> 
            <label for="namae">あいことば:</label> 
            <input type="text" id="namae" name="namae">  
             <span class="error-message"></span>
        </p> 

        <div class="button-group"> 
            <input type="submit" value="確認"> 
        </div> 
    </form>
</body>
</html>