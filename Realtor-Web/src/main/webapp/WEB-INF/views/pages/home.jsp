<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link href="<c:url value='/static/css/home.css' />" rel="stylesheet"></link>
    <script src="<c:url value='/static/js/jquery-3.1.1.min.js' />"></script>
    <script src="<c:url value='/static/js/home.js' />"></script>
</head>
<body onload="hideRegistretion()">
<div class="all">
    <c:forEach items="${requestScope.buildings}" var="building">
        <div class="post" id="${building.id}">
            <div class="wall">
                <div class="picture">
                    <img src="${building.image}">
                </div>
                <div class="left">
                    <div class="description">${building.description} </div>
                    <div class="bottom_registr">
                        <input type="button" value="Записаться" onclick="showRegistration(${building.id})">
                    </div>
                </div>
            </div>
            <div class="registr" id="registr${building.id}">
                <form method="post" action="/registration">
                    <p><select size="5" multiple name="date" style="width: 100%" required>
                        <option disabled>Выберите дату и время</option>
                        <c:forEach items="${building.calendarViewList}" var="calendarView">
                            <c:if test="${calendarView.state == true }">
                                <option value="${calendarView.id}">${calendarView.dateView}</option>
                            </c:if>
                        </c:forEach>
                    </select></p>
                    <input type="text" value="${building.id}" hidden>
                    <input type="text" placeholder="Введите Имя" required name="name"/>
                    <input type="text" placeholder="Введите Фамилию" required name="surname"/>
                    <input type="text" placeholder="Введите Отчество" required name="patronymic"/>
                    <input type="number" placeholder="Введите номер телефона" required name="phone"/>
                    <input type="submit" value="Записаться" style="width: 100%">
                    <input type="button" value="Отмена" onclick="cancel()">
                </form>
            </div>
        </div>
    </c:forEach>
    <div class="empty"></div>
</div>
</body>
</html>