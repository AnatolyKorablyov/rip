<%@ page import="lab01.SubjectAreas.Car" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <title>Список</title>
</head>
<body>
<div class="container col-sm-3 pt-5">

    <table class="table">
        <thead>
            <tr>
                <th>Модель</th>
                <th>Тип кузова</th>
                <th>Мощность двигателя</th>
                <th>Год выпуска</th>
                <th>Цвет</th>
            </tr>
        </thead>
        <tbody>
        <%
            ArrayList<Car> cars = (ArrayList<Car>) request.getAttribute("cars");

            for(Car car : cars) {
                out.println("<tr>");
                out.println("<td>" + car.model + "</td>");
                out.println("<td>" + car.bodyType + "</td>");
                out.println("<td>" + car.enginePower + "</td>");
                out.println("<td>" + car.yearOfIssue + "</td>");
                out.println("<td>" + car.color + "</td>");
                out.println("</tr>");
            }
        %>
        </tbody>
    </table>

    <form action="index" method="get">
        <button type="submit" class="btn btn-primary float-left mb-5">Назад</button>
    </form>

</div>

</body>
</html>
