<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <style>
    table,
    th,
    td {
      border: 1px, solid, black;
    }

    th,
    td {
      padding: 10px;
    }
  </style>

  Vosu etes sur la pages d'accueil ...

  <body>
    <h1>Bienvenue sur la page de tout les visiteurs</h1>
    <table>
      <thead>
        <tr>
          <th>id</th>
          <th>First name</th>
          <th>last name</th>
          <th>invitation number</th>
        </tr>
      </thead>

<tbody>

      <c:forEach items = "${listOfVisitors}" var="visitor">
<tr>
<%-- La balise <c:out> affiche le résultat d'une expression. C'est presque similaire à la façon dont <%= %> fonctionne. La différence ici est que la balise <c:out> vous permet d'utiliser le plus simple "." notation pour accéder aux propriétés. Par exemple, pour accéder à customer.address.street, utilisez la balise <c:out value = "customer.address.street"/> . --%>
<td> <c:out value = "${visitor.id}"/></td>
<td> <c:out value = "${visitor.firstName}"/></td>
<td> <c:out value = "${visitor.lastName}"/></td>
<td> <c:out value = "${visitor.invitationNumber}"/></td>

<td>      <a href="/editview/${visitor.id}" >edit</a></td>

</tr>
</c:forEach>
    </table>
         <a href="/visitorwelcomescreen" >to view the register  please click here!!</a>
  </body>
</html>
