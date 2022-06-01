<!-- @format -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="spring"
uri="http://www.springframework.org/tags"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

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
      border: 1px, solid black;
    }

    th,
    td {
      padding: 10px;
    }
  </style>

  Vosu etes sur la pages d'enregistrement ...

  <body>
    <h1>Page d'enregistrement</h1>

    <p>
      <form:errors path="visitorObject.*" />
    </p>

    <form:form action="/register" methode="POST" modelAttribute="visitorObject">
      <p>
        <form:label path="firstName">Firstname </form:label>
        <%-- <form:errors path="firstName"/>  --%>
        <form:input path="firstName"/>
      </p>

      <p>
        <form:label path="lastName">lastName </form:label>
        <%-- <form:errors path="lastName"/> --%>
        <form:input path="lastName"/>
      </p>

      <p>
        <form:label path="invitationNumber">invitationNumber </form:label>
        <%-- <form:erros path="invitationNumber"/>  --%>
        <form:input path="invitationNumber"/>

      <input type="submit" value ="RegisterValue" />
    </form:form>
    <br>
         <a href="/visitorwelcomescreen" >to view the register  please click here!!</a>


  </body>
</html>
