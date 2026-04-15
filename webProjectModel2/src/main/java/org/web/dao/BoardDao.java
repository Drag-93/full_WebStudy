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
import org.web.dto.BoardDto;
import org.web.entity.BoardEntity;


public class BoardDao {
	//=========================싱글톤=========================
		private BoardDao() {
			System.out.println("싱글톤 -> BoardDao");
		}
		private static class SingleTon{
			private static final BoardDao INSTANCE =new BoardDao();
		}
		public static BoardDao getInstance() {
			return SingleTon.INSTANCE;
		}
	//=========================싱글톤=========================
	
		
		
		
		public List<BoardEntity> findAll() {
			List<BoardEntity> boardEntities=new ArrayList<BoardEntity>();
			
			Connection conn=null;
			PreparedStatement pstm =null;
			String query="";
			ResultSet rs=null;
			try {
				conn=DBConnect.getConnection();
				query="select * from board_tb2";
				pstm=conn.prepareStatement(query);

				rs=pstm.executeQuery();
				
				while(rs.next()) {
					boardEntities.add(
							new BoardEntity(
									rs.getLong(1), 
									rs.getString(2), 
									rs.getString(3), 
									rs.getLong(4), 
									rs.getTimestamp(5) != null ? rs.getTimestamp(5).toLocalDateTime() : null,
									rs.getTimestamp(6) != null ? rs.getTimestamp(6).toLocalDateTime() : null)); 
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

			return boardEntities;
		}




		public int save(BoardEntity boardEntity) {
			Connection conn=null;
			PreparedStatement pstm =null;
			String query="";
			int rs =0;
			try {
				conn=DBConnect.getConnection();
				query="insert into board_tb2(title,content,member_id,createTime) "
						+ "values(?,?,?,?);";
				pstm=conn.prepareStatement(query);
				
				pstm.setString(1, boardEntity.getTitle());
				pstm.setString(2, boardEntity.getContent());
				pstm.setLong(3, boardEntity.getMemberId());
				pstm.setTimestamp(4, Timestamp.valueOf(LocalDateTime.now()));
				
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




		public BoardEntity findById(Long boardId) {
			BoardEntity boardEntity=null;
			
			Connection conn=null;
			PreparedStatement pstm =null;
			ResultSet rs =null;
			String query="";
			try {
				conn=DBConnect.getConnection();
				query="select * from board_tb2 where board_id=?";
				pstm=conn.prepareStatement(query);
				
				pstm.setLong(1, boardId);
				
				rs=pstm.executeQuery();
				while(rs.next()) {
					boardEntity= new BoardEntity(
							(long)rs.getInt(1), 
							rs.getString(2),
							rs.getString(3), 
							(long)rs.getInt(4), 
							rs.getTimestamp(5) != null ? rs.getTimestamp(5).toLocalDateTime() : null,
							rs.getTimestamp(6) != null ? rs.getTimestamp(6).toLocalDateTime() : null);
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
			return boardEntity;
		}




		public int delete(Long boardId) {
			Connection conn=null;
			PreparedStatement pstm =null;
			String query="";
			int rs =0;
			try {
				conn=DBConnect.getConnection();
				query="delete from board_tb2 where board_id=?";
						
				pstm=conn.prepareStatement(query);
				
				pstm.setLong(1, boardId);
				
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




		public int saveUpdate(BoardEntity boardEntity) {
			Connection conn=null;
			PreparedStatement pstm =null;
			String query="";
			int rs =0;
			try {
				conn=DBConnect.getConnection();
				query="update board_tb2 set title=?,content=?,updateTime=? where board_id=?";
				pstm=conn.prepareStatement(query);
				
				pstm.setString(1, boardEntity.getTitle());
				pstm.setString(2, boardEntity.getContent());
				pstm.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
				pstm.setLong(4, boardEntity.getboardId());
				
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
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

