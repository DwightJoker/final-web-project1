<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Админка</title>
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
        main {
            display: flex;
            justify-content: space-between;
            padding: 20px;
        }
        .users-list, .news-list {
            width: 45%;
            border: 1px solid #ccc;
            padding: 10px;
        }
        select {
            width: 100%;
            margin-bottom: 10px;
        }
        button {
            display: block;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <header>
        <h1>Админка</h1>
    </header>
    <main>
        <div class="users-list">
            <h2>Пользователи</h2>
            <select name="users" id="users">
                <option value="user1">Пользователь 1</option>
                <option value="user2">Пользователь 2</option>
                <option value="user3">Пользователь 3</option>
            </select>
            <button onclick="blockUser()">Блокировать пользователя</button>
        </div>
        <div class="news-list">
            <h2>Новости</h2>
            <select name="news" id="news">
                <option value="news1">Новость 1</option>
                <option value="news2">Новость 2</option>
                <option value="news3">Новость 3</option>
            </select>
            <button onclick="editNews()">Редактировать новость</button>
            <button onclick="deleteNews()">Удалить новость</button>
        </div>
    </main>

    <script>
        function blockUser() {
            var selectedUser = document.getElementById("users").value;
            // ваш код для блокировки пользователя
            alert("Пользователь " + selectedUser + " был заблокирован.");
        }

        function editNews() {
            var selectedNews = document.getElementById("news").value;
            // ваш код для редактирования новости
            alert("Редактирование новости: " + selectedNews);
        }

        function deleteNews() {
            var selectedNews = document.getElementById("news").value;
            // ваш код для удаления новости
            alert("Новость " + selectedNews + " была удалена.");
        }
    </script>
</body>
</html>