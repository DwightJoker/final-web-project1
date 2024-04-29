<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ГАВ - Новости</title>
<style>
.news-item {
	display: flex;
	align-items: center;
	margin-bottom: 15px;
	padding-bottom: 15px;
	border-bottom: 1px solid #eee;
}

.img-fluid {
	width: 200px;
	height: 120px;
	margin-right: 20px;
}

.news-content {
	flex-grow: 1;
}

.news-title {
	color: #007bff;
	font-size: 20px;
}

.news-text {
	font-size: 14px;
	color: #666;
}

.news-info {
	font-size: 12px;
	color: #999;
}
/* Стили для красивого отображения */
.profile-button {
	float: right;
	margin-right: 10px;
}

.logout-button {
	float: right;
	margin-right: 10px;
}
</style>
</head>
<body>
	<h1>Новости</h1>
	<button class="profile-button" onclick="editProfile()">Редактировать
		профиль</button>
	<a href="Controller?command=do_log_out">Выйти из аккаунта</a>
	<div class="error-message" id="error-message"> 
			<c:if test="${not (param.authError eq null) }">
			     <c:out value="${param.authError}" />
			</c:if>
			</div>

	<div class="news-item">

		<c:forEach var="news" items="${requestScope.mainNews}">
			<img src="${news.imgPath}" alt="Базовый курс Java" class="img-fluid">
			<div class="news-content">
				<h3 class="news-title">${news.title}</h3>
				<p class="news-text">${news.brief}</p>
				<p class="news-info">${news.info}</p>
			</div>
		</c:forEach>
	</div>

</body>
</html>