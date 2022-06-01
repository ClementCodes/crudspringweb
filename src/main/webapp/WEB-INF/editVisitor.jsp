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
    <title>Editer les informations du visiteur</title>
  </head>
  
    <p>
      <form:errors path="aSingleVisitorObject.*" />
    </p>
<%-- la diffenrece avec uin nouvel enregistr" et de mettre a jour l id  --%>
    <form:form action="/edit/${aSingleVisitorObject.id}" methode="POST" modelAttribute="aSingleVisitorObject">


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
      <form action="/remove/${aSingleVisitorObject.id}" method="POST"> 

      <input type="submit" value ="delete" />
        </form>
    <br>
         <a href="/visitorwelcomescreen" >to view the register  please click here!!</a>


  </body>
</html>
