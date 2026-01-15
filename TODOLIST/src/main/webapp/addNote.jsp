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

<!-- Page Content -->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white">
                    <h4 class="mb-0">Add New Note</h4>
                </div>
                <div class="card-body">
                    <form action="NoteServlet" method="post">
                        <div class="form-group mb-3">
                            <label for="noteTitle">Title</label>
                            <input type="text" name="title" class="form-control" id="noteTitle" placeholder="Enter title" required>
                        </div>

                        <div class="form-group mb-3">
                            <label for="noteContent">Content</label>
                            <textarea name="content" class="form-control" id="noteContent" rows="5" placeholder="Write your note here..." required></textarea>
                        </div>
                        <div class="container text-center mt-2">
                        <button type="submit" class="btn btn-success ">Add Note</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
