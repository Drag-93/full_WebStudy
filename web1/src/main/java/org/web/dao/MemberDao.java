package org.web.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.web.connect.DBConnect;
import org.web.constraint.Role;
import org.web.entity.MemberEntity;

public class MemberDao {
//=========================싱글톤=========================
	private MemberDao() {
		System.out.println("싱글톤 -> MemberDao");
	}
	private static class SingleTon{
		private static final MemberDao INSTANCE =new MemberDao();
	}
	public static MemberDao getInstance() {
		return SingleTon.INSTANCE;
	}
//=========================싱글톤=========================
	//이메일체크
	public MemberEntity findByEmail(String email) {
		MemberEntity memberEntity=null;
		
		Connection conn=null;
		PreparedStatement pstm =null;
		ResultSet rs =null;
		String query="";
		try {
			conn=DBConnect.getConnection();
			query="select * from member_tb1 where email=?";
			pstm=conn.prepareStatement(query);
			
			pstm.setString(1, email);
			
			rs=pstm.executeQuery();
			while(rs.next()) {
				memberEntity= new MemberEntity(rs.getLong(1), rs.getString(2), rs.getString(3), rs.getInt(4), Role.valueOf(rs.getString(5)), rs.getTimestamp(6).toLocalDateTime(), null);
			}	
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn !=null ) conn.close();
				if(pstm !=null) pstm.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return memberEntity;
	}
	
	//아이디 조회
	public MemberEntity findById(Long memberId) {
		MemberEntity memberEntity=null;
		
		Connection conn=null;
		PreparedStatement pstm =null;
		ResultSet rs =null;
		String query="";
		try {
			conn=DBConnect.getConnection();
			query="select * from member_tb1 where memberId=?";
			pstm=conn.prepareStatement(query);
			
			pstm.setLong(1, memberId);
			
			rs=pstm.executeQuery();
			while(rs.next()) {
				memberEntity=new MemberEntity(rs.getLong(1), rs.getString(2), rs.getString(3), rs.getInt(4), Role.valueOf(rs.getString(5)), rs.getTimestamp(6).toLocalDateTime(), null);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn !=null ) conn.close();
				if(pstm !=null) pstm.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return memberEntity;
	}

	public int save(MemberEntity memberEntity) {
		Connection conn=null;
		PreparedStatement pstm =null;
		String query="";
		int rs =0;
		try {
			conn=DBConnect.getConnection();
			query="insert into member_tb1(user_email,user_name,age,role,createTime) "
					+ "values(?,?,?,?,?);";
			pstm=conn.prepareStatement(query);
			
			pstm.setString(1, memberEntity.getUserEmail());
			pstm.setString(2, memberEntity.getUserName());
			pstm.setInt(3, memberEntity.getAge());
			pstm.setString(4, Role.MEMBER.toString());
			pstm.setTimestamp(5, Timestamp.valueOf(LocalDateTime.now()));
			
			rs=pstm.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn !=null ) conn.close();
				if(pstm !=null) pstm.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return rs;
	}
	public int saveUpdate(MemberEntity memberEntity) {
		Connection conn=null;
		PreparedStatement pstm =null;
		String query="";
		int rs =0;
		try {
			conn=DBConnect.getConnection();
			query="update member_tb1 set user_email=?, user_name=?, age=?, role=?,updateTime=? where memberId=?";
			pstm=conn.prepareStatement(query);
			
			pstm.setString(1, memberEntity.getUserEmail());
			pstm.setString(2, memberEntity.getUserName());
			pstm.setInt(3, memberEntity.getAge());
			pstm.setString(4, memberEntity.getRole().toString());
			pstm.setTimestamp(5, Timestamp.valueOf(LocalDateTime.now()));
			pstm.setLong(6, memberEntity.getMemberId());
			
			rs=pstm.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn !=null ) conn.close();
				if(pstm !=null) pstm.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return rs;
	}
	public int delete(Long memberId) {
		 
//		MemberEntity memberEntity=null;
		
		Connection conn=null;
		PreparedStatement pstm =null;
		String query="";
		int rs=0;
		try {
			conn=DBConnect.getConnection();
			query="delete from member_tb1 where memberId=?";
			pstm=conn.prepareStatement(query);
			
			pstm.setLong(1, memberId);
			
			rs=pstm.executeUpdate();
			
			try {
				
				}catch(Exception e){
				throw new RuntimeException("회원 탈퇴 실패");
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn !=null ) conn.close();
				if(pstm !=null) pstm.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return rs;
	}
	public List<MemberEntity> findAll() {
		List<MemberEntity> memberEntities=new ArrayList<MemberEntity>();
		
		Connection conn=null;
		PreparedStatement pstm =null;
		String query="";
		ResultSet rs=null;
		try {
			conn=DBConnect.getConnection();
			query="select * from member_tb1";
			pstm=conn.prepareStatement(query);

			rs=pstm.executeQuery();
			
			while(rs.next()) {
				memberEntities.add(
						new MemberEntity(
								rs.getLong(1),
								rs.getString(2),
								rs.getString(3),
								rs.getInt(4),
								Role.valueOf(rs.getString(5)),
								rs.getTimestamp(6).toLocalDateTime(),
								rs.getTimestamp(7).toLocalDateTime())						);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn !=null ) conn.close();
				if(pstm !=null) pstm.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return memberEntities;
	}
	
	
	
	
	
}