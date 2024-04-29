<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Регистрация</title>
    <style>
        /* Стили для красивого отображения */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        nav {
            background-color: #666;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        section {
            padding: 20px;
        }
        article {
            margin-bottom: 20px;
        }
        footer {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h1>Регистрация нового <br />пользователя</h1>
    <form action="Controller" method="post">
        <input type="hidden" name="command" value="do_registration"/>
        <div class="form-group">
        	<input type="text" class="input-field" placeholder="Имя пользователя" id="name" name="name"required>
            <input type="email" class="input-field" placeholder="Введите email" id="loginUsername" name="email" required>
        </div>
        <div class="form-group">
            <input type="password" class="input-field" placeholder="Пароль" id="loginPassword" name="password" required>
            <input type="password" class="input-field" placeholder="Подтвердите пароль" id="loginPassword" name="password" required>
        </div>
        <div class="error-message" id="error-message"> 
			<c:if test="${not (param.regError eq null) }">
			     <c:out value="${param.regError}" />
			</c:if>
			</div>
        <button type="submit" class="btn btn-primary">Зарегистрироваться</button>
    </form>
</div>   
      <div class="footer">
			<p>&copy; 2024 Изучаем Java. Все права защищены.</p>
		</div>
</body>
</html>