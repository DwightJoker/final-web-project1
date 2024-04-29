<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Профиль пользователя</title>
</head>
<body>
    <h1>Профиль пользователя</h1>
    <form action="logout" method="post">
        <input type="submit" value="Выйти из аккаунта">
    </form>
    <form action="updateProfile" method="post">
        <label for="username">Имя пользователя:</label>
        <input type="text" id="username" name="username" value="${user.username}" readonly><br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${user.email}"><br><br>
        
     	<label for="username">Дата рождения</label>
        <input type="text" id="username" name="username" value="${user.username}" readonly><br><br>
        
        <label for="username">Пол</label>
        <input type="text" id="username" name="username" value="${user.username}" readonly><br><br>
        
        <label for="username">Образование</label>
        <input type="text" id="username" name="username" value="${user.username}" readonly><br><br>
        
        <input type="submit" value="Обновить профиль">
    </form>
    <br>
    <form action="changePassword" method="post">
        <label for="oldPassword">Старый пароль:</label>
        <input type="password" id="oldPassword" name="oldPassword"><br><br>
        
        <label for="newPassword">Новый пароль:</label>
        <input type="password" id="newPassword" name="newPassword"><br><br>
        
        <input type="submit" value="Сменить пароль">
    </form>
    <br>
    <form action="deleteAccount" method="post" onsubmit="return confirm('Вы уверены?');">
        <input type="submit" value="Удалить аккаунт">
    </form>
    <br>
    
</body>
</html>