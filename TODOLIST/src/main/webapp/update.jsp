<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.Note"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Notes</title>
    <%@ include file="all_js_css.jsp" %>
</head>
<body>

<!-- Navbar -->
<%@ include file="Navbar.jsp" %>

<% 
int id = Integer.parseInt(request.getParameter("note_id"));
Session s=FactoryProvider.getFactory().openSession();
Note n=s.get(Note.class,id);
%>

<!-- Page Content -->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white">
                    <h4 class="mb-0">Add New Note</h4>
                </div>
                <div class="card-body">
                    <form action="UpdateServlet" method="post">
                    <input type="text" name="id" value="<%=n.getId() %>" hidden/>
                        <div class="form-group mb-3">
                            <label for="noteTitle">Title</label>
                            <input type="text" name="title" class="form-control" id="noteTitle" required value="<%= n.getTitle() %>" />
                        </div>

                        <div class="form-group mb-3">
                            <label for="noteContent">Content</label>
                            <textarea name="content" class="form-control" id="noteContent" rows="5"  required><%= n.getContent() %> </textarea>
                        </div>
                        <div class="container text-center mt-2">
                        <button type="submit" class="btn btn-success ">Save Changes</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
