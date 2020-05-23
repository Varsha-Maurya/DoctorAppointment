package com.data;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.models.Availability;


public class availabilityDB {
	public static List<Availability> getAvailability(String doctorID) {
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query = "select * from findyourdoctor.availability where doctorID ='" + doctorID+"'";
		System.out.println((query));
		try {
			java.sql.Connection con = Connection.getConnection(query);
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
		
			List<Availability> availList=new ArrayList<Availability>();
			while (rs.next()) {
				Availability availability=new Availability();
				availability.setavailID(rs.getString("availID"));
				availability.setdoctorID(rs.getString("doctorID"));
				availability.setavailDate(rs.getString("availDate"));
				availability.setavailTime(rs.getString("availTime"));
				
				availList.add(availability);
			}
			return availList;
		} catch (SQLException ex) {
			System.out.println(ex);
			return null;
		}
	}
}
