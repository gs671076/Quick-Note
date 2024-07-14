<%-- 
    Document   : index
    Created on : Jul 13, 2024, 11:18:07 AM
    Author     : NIKHIL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Quick Notes</title>
    <%@include file="css_js.jsp" %>
  </head>
  <body>
      <div class="container">
      <%@include file="navbar.jsp" %>
      <div class="card py-5">
          <img class="img-fluid mx-auto" src="img/sticky-note.png" style="max-width:  400px">
          <h1 class="text-primary text-uppercase text-center mt-3 ">Start Taking Note Here</h1>
          <div class="container text-center">
              <a href="addNote.jsp" class="btn btn-primary">Take Note</a>
          </div>
      </div>
      </div>
    
  </body>
</html>