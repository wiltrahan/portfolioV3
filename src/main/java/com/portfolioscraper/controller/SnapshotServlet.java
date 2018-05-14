package com.portfolioscraper.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portfolioscraper.scrape.Scrape;

/**
 * Servlet implementation class SnapshotServlett
 */
@WebServlet("/SnapshotServlet")
public class SnapshotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SnapshotServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Scrape scrape = new Scrape();
		
		scrape.startDeScrapah();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("list-date.jsp");
		
		dispatcher.forward(request, response);
	}

	
	
	
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Scrape scrape = new Scrape();
//		if(request.getParameter("Snappy") != null) {
//			scrape.startDeScrapah();
//		}
		
		
	}

}
