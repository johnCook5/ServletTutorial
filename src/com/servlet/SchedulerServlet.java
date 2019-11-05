package com.servlet;


import java.io.IOException;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Course;
import com.user.WeekDay;

/**
 * Servlet implementation class SchedulerServlet
 */
@WebServlet("/SchedulerServlet")
public class SchedulerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SchedulerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
			HttpSession session = request.getSession(true);
			
			ArrayList<Course> courses=(ArrayList<Course>)session.getAttribute("courses");
			
			if(courses==null)
			{
			courses =	new ArrayList<Course>();

			}
			
			Course newSessionCourse = new Course();	
			
			
			String courseName = request.getParameter("courseName");
			newSessionCourse.setCourseName(courseName);
			String professor = request.getParameter("professor");
			newSessionCourse.setProfessor(professor);
			String roomNumberString = request.getParameter("roomNumberString");
			int roomNumber = Integer.parseInt(roomNumberString);
			newSessionCourse.setRoomNumber(roomNumber);
			String courseStartDate = request.getParameter("courseStartDate");
			newSessionCourse.setStartDate(courseStartDate);
			String courseTime = request.getParameter("courseTime");
			newSessionCourse.setTime(courseTime);
			
			String [] weekdays = request.getParameterValues("weekday");
			WeekDay[] occurrences = new WeekDay [weekdays.length];
			
			for(int i =0; i < weekdays.length; i++) 
			{
				occurrences[i] = WeekDay.valueOf(weekdays[i]);
			}
			
			newSessionCourse.setOccurrences(occurrences);
			
			
			courses.add(newSessionCourse);
			
			session.setAttribute("courses", courses);
			
			RequestDispatcher rs = request.getRequestDispatcher("course.jsp");
			rs.forward(request,response);
			
			
			
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
