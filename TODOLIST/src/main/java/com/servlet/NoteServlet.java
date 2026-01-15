package com.servlet;

import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class NoteServlet
 */
@WebServlet("/NoteServlet")
public class NoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public NoteServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 Session session = null;
		    Transaction tx = null;

		try {
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		
		Note n1=new Note();
		n1.setTitle(title);
		n1.setContent(content);
		n1.setAddedDate(new Date());
		
		SessionFactory factory=FactoryProvider.getFactory();
		 session=factory.openSession();
		 tx=session.beginTransaction();
		
		session.persist(n1);
		
		tx.commit();
		response.sendRedirect("ShowNote.jsp");
		
		
		
		 } catch(Exception e) {
		        if(tx != null) tx.rollback();
		        e.printStackTrace();
		        response.getWriter().println("Error: " + e.getMessage());
		    } finally {
		        if(session != null) session.close();
		    }

}
}
