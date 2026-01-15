<%@page import="java.util.List"%>
<%@page import="com.entities.Note"%>
<%@page import="jakarta.persistence.TypedQuery"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Notes</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>

	<!-- Navbar -->
	<%@ include file="Navbar.jsp"%>


	<!-- Page Content -->
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<form>

					<%
					Session session2 = FactoryProvider.getFactory().openSession();

					TypedQuery<Note> q = session2.createQuery("from Note", Note.class);
					List<Note> notes = q.getResultList();
					for (Note n : notes) {
					%>
					<div class="card shadow-sm mb-3">
						<img class="mx-auto" src="img/note.png" style="max-width: 100px;">
						<div class="card-body">
							<h5 class="card-title"><%=n.getTitle()%></h5>
							<p class="card-text"><%=n.getContent()%></p>
						</div>
						<div class="container text-center mt-2">
							<a  href="update.jsp?note_id=<%=n.getId() %>" class="btn btn-primary m-1 ">Update</a>
							<a  href="DeleteServlet?note_id=<%=n.getId() %>"class="btn btn-danger m-1 ">Delete</a>
						</div>
					</div>

					<%
					}

					session2.close();
					%>

				</form>
			</div>
		</div>
	</div>

</body>
</html>
