package com.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

public class StudentRegistration {

	// insert
	public static int insert(GetSet g) {

		int status = 0;
		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "akshay1",
					"akshay1234");

			String s = "insert into studentdata value(?,?,?,?,?,?,?)";

			PreparedStatement ps = (PreparedStatement) con.prepareStatement(s);

			ps.setInt(1, g.getRegno());
			ps.setString(2, g.getName());
			ps.setString(3, g.getEmail());
			ps.setString(4, g.getAddress());
			ps.setString(5, g.getCity());
			ps.setString(6, g.getState());
			ps.setInt(7, g.getZipcode());

			status = ps.executeUpdate();

			System.out.println(status + " record inserted");

		} catch (Exception e) {
			System.out.println(e);
		}

		return status;

	}

	// select

	public static List<GetSet> select() {

		List<GetSet> li = new ArrayList<GetSet>();
		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "akshay1",
					"akshay1234");

			String s = "select * from studentdata";

			PreparedStatement ps = (PreparedStatement) con.prepareStatement(s);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				GetSet g = new GetSet();

				g.setRegno(rs.getInt(1));
				g.setName(rs.getString(2));
				g.setEmail(rs.getString(3));
				g.setAddress(rs.getString(4));
				g.setCity(rs.getString(5));
				g.setState(rs.getString(6));
				g.setZipcode(rs.getInt(7));

				li.add(g);
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return li;
	}
	// getbook by id

	public static GetSet getBookById(int id) {

		GetSet gs = new GetSet();

		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "akshay1",
					"akshay1234");

			String s = "select * from studentdata where regno=?";

			PreparedStatement ps = (PreparedStatement) con.prepareStatement(s);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				gs.setRegno(rs.getInt(1));
				gs.setName(rs.getString(2));
				gs.setEmail(rs.getString(3));
				gs.setAddress(rs.getString(4));
				gs.setCity(rs.getString(5));
				gs.setState(rs.getString(6));
				gs.setZipcode(rs.getInt(7));
			}

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();

		}

		return gs;
	}

	// Update

	public static int update(GetSet s) {
		int status = 0;

		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "akshay1",
					"akshay1234");

			String s1 = "update studentdata set name=?,email=?, address=?,city=?,state=?,zipcode=?  where regno=?";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(s1);

			ps.setInt(7, s.getRegno());
			ps.setString(1, s.getName());
			ps.setString(2, s.getEmail());
			ps.setString(3, s.getAddress());
			ps.setString(4, s.getCity());
			ps.setString(5, s.getState());
			ps.setInt(6, s.getZipcode());

			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	// delete

	public static int delete(int regno) {

		int status = 0;

		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "akshay1",
					"akshay1234");

			String s1 = "delete from studentdata where regno=?";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(s1);
			ps.setInt(1, regno);

			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();

		}

		return status;
	}

}
