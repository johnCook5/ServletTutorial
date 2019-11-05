package com.user;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;


public class Course
{
	

	private String courseName;
	private String professor;
	private WeekDay[] occurrences;
	private int roomNumber;
	private String startDate;
	private String time;
	
	
	
	
	public Course()
	{
		
		
	}
	
	public Course(String courseName, String professor, String time, String startDate, int roomNumber, WeekDay[] occurrences)
	{
		this.courseName = courseName;
		this.professor = professor;
		this.time = time;
		this.startDate= startDate;
		this.roomNumber = roomNumber;
		this.occurrences = occurrences;
		
	}
	
	public String getCourseName()
	{
		return courseName;
	}

	public void setCourseName(String courseName)
	{
		this.courseName = courseName;
	}

	public String getProfessor()
	{
		return professor;
	}

	public void setProfessor(String professor)
	{
		this.professor = professor;
	}

	public String getTime()
	{
		return time;
	}

	public void setTime(String time)
	{
		this.time = time;
	}

	public String getStartDate()
	{
		return startDate;
	}

	public void setStartDate(String startDate)
	{
		this.startDate = startDate;
	}

	public int getRoomNumber()
	{
		return roomNumber;
	}

	public void setRoomNumber(int roomNumber)
	{
		this.roomNumber = roomNumber;
	}

	public WeekDay[] getOccurrences()
	{
		return occurrences;
	}

	public void setOccurrences(WeekDay[] occurrences)
	{
		this.occurrences = occurrences;
	}

	
	


	@Override
	public String toString()
	{
		return "Course [courseName=" + courseName + ", professor=" + professor + ", occurrences="
				+ Arrays.toString(occurrences) + ", roomNumber=" + roomNumber + ", startDate=" + startDate + ", time="
				+ time + "]";
	}

	
	

}



