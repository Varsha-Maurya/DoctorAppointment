package com.data;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.models.Doctor;

public class DoctorDB {
	public static List<Doctor> getDoctors(String specialization, String location) {
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query = "select * from doctor where hospitalAddress ='" + location +
				"' and specialization = '" + specialization+"'";
		System.out.println((query));
		try {
			java.sql.Connection con = Connection.getConnection(query);
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
		
			List<Doctor> doctorList=new ArrayList<Doctor>();
			while (rs.next()) {
				Doctor doctor=new Doctor();
				doctor.setId(rs.getString("doctorID"));
				doctor.setEmail(rs.getString("email"));
				doctor.setFirstName(rs.getString("firstName"));
				doctor.setLastName(rs.getString("lastName"));
				doctor.setSpecialization(rs.getString("specialization"));
				doctor.setContact(rs.getString("contact"));
				doctor.setCreatedAt(rs.getString("createdAt"));
				doctor.setLocation(rs.getString("hospitalAddress"));
		
				doctorList.add(doctor);
			}
			return doctorList;
		} catch (SQLException ex) {
			System.out.println(ex);
			return null;
		}
	}
	
	public static Doctor getDoctorDetail(Integer doctoId) {
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query = "select * from doctors where doctorId =" + doctoId;
		System.out.println((query));
		try {
			java.sql.Connection con = Connection.getConnection(query);
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
		
			Doctor doctor=new Doctor();
			while (rs.next()) {
				
				doctor.setId(rs.getString("doctorId"));
				doctor.setEmail(rs.getString("email"));
				doctor.setFirstName(rs.getString("firstName"));
				doctor.setLastName(rs.getString("lastName"));
				doctor.setSpecialization(rs.getString("specialization"));
				doctor.setContact(rs.getString("contact"));
				doctor.setCreatedAt(rs.getString("createdAt"));
				doctor.setLocation(rs.getString("hospitalAddress"));
				
			}
			System.out.println(doctor);
			return doctor;
		} catch (SQLException ex) {
			System.out.println(ex);
			return null;
		}
	}
}
