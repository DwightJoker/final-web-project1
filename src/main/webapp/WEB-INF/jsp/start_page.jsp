<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ГАВ</title>
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
    <header>
        <h1>Главный Автомобильный Вестник</h1>
        <h2>Журнал о том, о сём, туда, сюда</h2>
    </header>
    <nav>
        <a href="Controller?command=go_to_log_in_page">Log In</a> | <a href="Controller?command=go_to_registration_page">Registration</a>
    </nav>
    <section>
        <h2>Главные новости недели</h2>
        <article>
            <h3>Новость 1</h3>
            <p>Краткое описание новости 1.</p>
            <a href="#news1">Прочитать новость целиком</a>
        </article>
        <article>
            <h3>Новость 2</h3>
            <p>Краткое описание новости 2.</p>
            <a href="#news2">Прочитать новость целиком</a>
        </article>
        <article>
            <h3>Новость 3</h3>
            <p>Краткое описание новости 3.</p>
            <a href="#news3">Прочитать новость целиком</a>
        </article>
    </section>
    <footer>
    <nav>
        <a href="Controller?command=go_to_in_process_page">Контакты</a> | <a href="Controller?command=go_to_in_process_page">Вакансии</a> | <a href="Controller?command=go_to_in_process_page">Обратная связь</a> | <a href="Controller?command=go_to_in_process_page">Поддержать</a>
    </nav>
        <p>Рекламное объявление</p>
        <p> ООО Главный Автомобильный Вестник &copy; 2024</p>
    </footer>
    
</body>
</html>