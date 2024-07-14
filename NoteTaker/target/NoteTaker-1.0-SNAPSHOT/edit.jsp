<%-- 
    Document   : edit
    Created on : Jul 14, 2024, 12:29:10 PM
    Author     : NIKHIL
--%>

<%@page import="org.hibernate.Transaction"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
        <%@include file="css_js.jsp"%>
    </head>
    <body>
        <div class="container">
            <%@include file="navbar.jsp" %>
             <%
             String noteId=request.getParameter("note_id").trim();
             int id=Integer.parseInt(noteId);
             Session s=FactoryProvider.getSessionFctory().openSession();
             Note note=(Note)s.get(Note.class,id);
            
            
            %>
            <br>
        <h1 class="text-uppercase">Edit the Note</h1>

            <br>
            <form action="UpdateServlet" method="post">
                <input value="<%=note.getId()%>" name="id" type="hidden">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" required name="title"
                           id="title" value="<%=note.getTitle()%>"
                            placeholder="Enter Title">
                </div>
                <div class="form-group">
                    <label for="content">Content</label><br>
                    <textarea  required name="content" class="form-control" id="content" placeholder="Enter content" style="height:250Px"><%=note.getContent()%></textarea>
                </div>
                
                <div class="container text-center">
                    <button type="submit"class="btn btn-success">Save Note</button>
                </div>
            </form>
           

        </div>   
    </body>
</html>
