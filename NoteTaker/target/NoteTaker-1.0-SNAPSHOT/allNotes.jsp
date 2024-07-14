<%-- 
    Document   : allNotes
    Created on : Jul 13, 2024, 2:48:38 PM
    Author     : NIKHIL
--%>
<%@page import="java.util.List"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notes</title>
        <%@include file="css_js.jsp"%>

    </head>
    <body >
        <div class="container">
            <%@include file="navbar.jsp"%>
            <br>
            <h1 class="text-uppercase">Note</h1>
            <div class="row">
                <div class="col-12">
                    <%
                        Session s = FactoryProvider.getSessionFctory().openSession();
                        Query q = s.createQuery("from Note");
                        List<Note> list = q.list();
                        for (Note note : list) {
                    %>
                    <div class="card mt-3">


                        <div class="card-body  ">
                            <div class="text-center">
                                <img class="card-img-top m-4" src="img/sticky-note.png" style="max-width:  100px;">
                            </div>
                            <h5 class="card-title text-center"><%=note.getTitle()%></h5>
                            <pre class="card-text px-5"><%= note.getContent()%></pre>
                            <b><pre class="card-text px-5 text-primary">Date: <%= note.getAddeddate()%></pre></b>

                            <div class="container text-center mt-2">
                                <a href="DeleteServlet?note_id=<%=note.getId()%>" class=" btn btn-danger">Delete</a>
                                <a href="edit.jsp?note_id=<%=note.getId()%>" class=" btn btn-primary ">Update</a>

                            </div>
                        </div>
                    </div>

                    <%
                        }
                        s.close();
                    %>  
                </div>
            </div>

        </div>
    </body>
</html>
