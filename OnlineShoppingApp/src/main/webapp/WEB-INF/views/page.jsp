<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
    <%--loading static resources --%>
    <spring:url var="css" value="/resources/css"></spring:url>
      <spring:url var="js" value="/resources/js"></spring:url>
        <spring:url var="images" value="/resources/images"></spring:url>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Shopping-${title}</title>
    <script>
    <%--Active Menu--%>
    window.menu='${title}'
    </script>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    <!-- Bootstrap journal theme -->
    <link href="${css}/boostrap-journal-theme.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/myapp.css" rel="stylesheet">

  </head>

  <body>
  <div class="wrapper">
<!-- navigation -->
    <%@include file="./shared/navbar.jsp" %>
    <!-- Page Content -->
    <div class="content">
    <!-- loading home contenet -->
    <c:if test= "${userClicksHome == true}">
    <%@include file="home.jsp" %>
    </c:if>
     <c:if test= "${userClicksAbout == true}">
    <%@include file="about.jsp" %>
    </c:if>
     <c:if test= "${userClicksContact == true}">
    <%@include file="contact.jsp" %>
    </c:if>
     </div>
    <!-- Footer -->
    <%@include file="./shared/footer.jsp" %>
   

    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.min.js"></script>
    <script src="${js}/bootstrap.bundle.min.js"></script>
    <!-- self coded -->
     <script src="${js}/myapp.js"></script>
     </div>

  </body>

</html>
    