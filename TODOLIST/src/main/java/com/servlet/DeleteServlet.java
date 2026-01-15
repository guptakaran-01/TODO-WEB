package com.servlet;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.FactoryProvider;

import jakarta.persistence.Query;
import jakarta.servlet.annotation.WebServlet;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public DeleteServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(jakarta.servlet.http.HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("note_id");
		Session s=null;
		Transaction tx=null;
		try {
		 s=FactoryProvider.getFactory().openSession();
		 tx=s.beginTransaction();
		Query q=s.createQuery("Delete Note where id=:x");
		q.setParameter("x", id);
		q.executeUpdate();	
		
		tx.commit();
		response.sendRedirect("ShowNote.jsp");
		
		
		
		 } catch(Exception e) {
		        if(tx != null) tx.rollback();
		        e.printStackTrace();
		        response.getWriter().println("Error: " + e.getMessage());
		    } finally {
		        if(s != null) s.close();
		    }
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
}
