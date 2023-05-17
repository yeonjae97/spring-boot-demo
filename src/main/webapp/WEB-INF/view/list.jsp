<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
 <html>

 <head>
   <meta charset='utf-8'>
   <meta http-equiv='X-UA-Compatible' content='IE=edge'>
   <title>Page Title</title>
   <meta name='viewport' content='width=device-width, initial-scale=1'>
 </head>

 <body>
 <form method="post">
 	학번<input name="no" /><br>
 	이름<input name="name" /><br>
 	점수<input name="score" /><br>
 	<button>등록</button>
 </form>
 <c:forEach items="${list}" var="item">
   <li id="${item.no }">${item.no} / ${item.name} / ${item.score} <button onclick="location.href='remove?no=${item.no}'">삭제</button></li>
  </c:forEach>
 </body>

 </html>