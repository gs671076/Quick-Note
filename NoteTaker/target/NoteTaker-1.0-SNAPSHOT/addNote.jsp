<%-- 
    Document   : addNote
    Created on : Jul 13, 2024, 12:40:32 PM
    Author     : NIKHIL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Notes</title>
        <%@include file="css_js.jsp" %>
    </head>
    <body>
        <div class="container">
            <%@include file="navbar.jsp" %>
            <h1>Please Enter Your Note Details.</h1>
            <br>
            <form action="SaveNoteServlet" method="post">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" required name="title"
                           id="title" 
                            placeholder="Enter Title">
                </div>
                <div class="form-group">
                    <label for="content">Content</label><br>
                    <textarea required name="content" class="form-control" id="content" placeholder="Enter content" style="height: 250px"></textarea>
                </div>
                
                <div class="container text-center">
                    <button type="submit" class="btn btn-primary">Add Note</button>
                </div>
            </form>
        </div>
    </body>
</html>
