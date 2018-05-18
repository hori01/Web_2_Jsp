package com.iu.point;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.iu.util.DBConnector;

public class PointDAO {

	public int insert(PointDTO point) {
		int result=0;
		PreparedStatement st=null;
		try {
			Connection con=DBConnector.getConnect();

			String sql="insert into point values(?,?,?,?,?,?,?)";

			st=con.prepareStatement(sql);
			
			st.setInt(1, point.getNum());
			st.setString(2, point.getName());
			st.setInt(3, point.getKor());
			st.setInt(4, point.getEng());
			st.setInt(5, point.getMath());
			st.setInt(6, point.getTotal());
			st.setDouble(7, point.getAvg());

			result=st.executeUpdate();
			DBConnector.disConnect(st, con);
		} catch (Exception e) {

			e.printStackTrace();
		}
		return result;
	}
	public int update(PointDTO point) {
		int result=0;
		PreparedStatement st=null;
		try {
			Connection con=DBConnector.getConnect();

			String sql="UPDATE point SET name=?,kor=?,eng=?,math=?,total=?,avg=? where num=?";

			st=con.prepareStatement(sql);
			
			st.setString(1, point.getName());
			st.setInt(2, point.getKor());
			st.setInt(3, point.getEng());
			st.setInt(4, point.getMath());
			st.setInt(5, point.getTotal());
			st.setDouble(6, point.getAvg());
			st.setInt(7, point.getNum());

			result=st.executeUpdate();
			DBConnector.disConnect(st, con);
		} catch (Exception e) {

			e.printStackTrace();
		}
		return result;
	}
	public int select() {
		int result=0;
		PreparedStatement st=null;
		ResultSet rs=null;
		Connection con;
		try {
			con = DBConnector.getConnect();
			String sql="select max(num) from point";
			st=con.prepareStatement(sql);
			rs=st.executeQuery();

			rs.next();
			result=rs.getInt(1);
			System.out.println(result);
			DBConnector.disConnect(rs, st, con);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public int delete(int num) {
		int result=0;
		PreparedStatement st=null;
		ResultSet rs=null;
		Connection con;
		try {
			con = DBConnector.getConnect();
			String sql="DELETE POINT WHERE num=?";
			st=con.prepareStatement(sql);
			st.setInt(1,num);
			result=st.executeUpdate();
			DBConnector.disConnect(rs, st, con);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	public ArrayList<PointDTO> print() {
		ArrayList<PointDTO> resultArray= new ArrayList<>();
		PointDTO result=null;
		PreparedStatement st=null;
		ResultSet rs=null;
		Connection con;
		try {
			con = DBConnector.getConnect();
			String sql="select * from point";
			st=con.prepareStatement(sql);
			rs=st.executeQuery();

			while(rs.next()) {
				result=new PointDTO();
				result.setNum(rs.getInt(1));
				result.setName(rs.getString(2));
				result.setKor(rs.getInt(3));
				result.setEng(rs.getInt(4));
				result.setMath(rs.getInt(5));
				result.setTotal(rs.getInt(6));
				result.setAvg(rs.getDouble(7));
				resultArray.add(result);
			}
			
			DBConnector.disConnect(rs, st, con);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return resultArray;
	}
	public ArrayList<PointDTO> print(int i) {
		ArrayList<PointDTO> resultArray= new ArrayList<>();
		PointDTO result=null;
		PreparedStatement st=null;
		ResultSet rs=null;
		Connection con;
		try {
			con = DBConnector.getConnect();
			String sql="select * from point where num=?";
			st=con.prepareStatement(sql);
			st.setInt(1,i);
			rs=st.executeQuery();

			while(rs.next()) {
				result=new PointDTO();
				result.setNum(rs.getInt(1));
				result.setName(rs.getString(2));
				result.setKor(rs.getInt(3));
				result.setEng(rs.getInt(4));
				result.setMath(rs.getInt(5));
				result.setTotal(rs.getInt(6));
				result.setAvg(rs.getDouble(7));
				resultArray.add(result);
			}
			
			DBConnector.disConnect(rs, st, con);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return resultArray;
	}
	
}
