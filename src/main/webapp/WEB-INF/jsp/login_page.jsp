<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Авторизация</title>
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
	<div class="container">
		<form class="form-signin" action="Controller" method="post">
		    <input type="hidden" name="command" value="do_log_in"/>
			<h2 class="form-signin-heading text-java text-center">Пожалуйста,
				войдите</h2>
            <div class="error-message" id="error-message"> 
			<c:if test="${not (param.authError eq null) }">
			     <c:out value="${param.authError}" />
			</c:if>
			</div>
        <div class="form-group">
            <input type="email" class="input-field" placeholder="Введите email" id="loginUsername" name="login" required>
        </div>
        <div class="form-group">
            <input type="password" class="input-field" placeholder="Введите пароль" id="loginPassword" name="password" required>
        </div>
        <label class="checkbox-label">
        <input type="checkbox" class="checkbox-input">
            Запомнить меня
        </label><br />
       <button class="btn btn-lg btn-success btn-block" type="submit">Войти</button>
    </form>
    <p><a href="Controller?command=go_to_registration_page">Регистрация нового аккаунта</a></p>
</div><br /><br />
      <div class="footer">
			<p>&copy; 2024 Изучаем Java. Все права защищены.</p>
		</div>
</body>
</html>