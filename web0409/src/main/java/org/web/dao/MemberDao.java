package org.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.web.connect.DbConnect;
import org.web.constraint.Role;
import org.web.entity.MemberEntity;

public class MemberDao {

	private MemberDao() {
		System.out.println("싱글톤 ->  MemberDao");
	}

	private static class SingleTon {
		private static final MemberDao INSTANCE = new MemberDao();
	}

	public static MemberDao getInstance() {
		return SingleTon.INSTANCE;
	}

	// 이메일찾기
	public MemberEntity findByUserEmail(String userEmail) {

		MemberEntity memberEntity = null;

		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;

		String query = "";

		try {
			conn = DbConnect.getConnection();
			query = " select * from member_tb1 where user_email=?";
			pstm = conn.prepareStatement(query);

			pstm.setString(1, userEmail);

			rs = pstm.executeQuery();

			if (rs != null) {
				while (rs.next()) {
					memberEntity = new MemberEntity((long) rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),
							Role.valueOf(rs.getString(5)), rs.getTimestamp(6).toLocalDateTime(), null);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (pstm != null)
					pstm.close();
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return memberEntity;
	}

	// 회원가입
	public int save(MemberEntity memberEntity) {
		Connection conn = null; // DB연동
		PreparedStatement pstm = null; // 쿼리문 처리
		String query = ""; // 쿠리문

		int rs = 0;

		try {
			conn = DbConnect.getConnection();
			query = "insert into " + "  member_tb1(user_email,user_name,age, role,createTime) " + "  values(?,?,?,?,?)";
			pstm = conn.prepareCall(query);
			// memberId-> 자동
			pstm.setString(1, memberEntity.getUserEmail());
			pstm.setString(2, memberEntity.getUserName());
			pstm.setInt(3, memberEntity.getAge());
			pstm.setString(4, memberEntity.getRole().toString());
			pstm.setTimestamp(5, Timestamp.valueOf(LocalDateTime.now())); // LocalDateTime -> Timestamp

			rs = pstm.executeUpdate(); // insert,update,delete 성공 1
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (pstm != null)
					pstm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return rs;
	}

	public List<MemberEntity> findAll() {
		List<MemberEntity> memberEntities = new ArrayList<MemberEntity>();

		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;

		String query = "";

		try {
			conn = DbConnect.getConnection();
			query = " select * from member_tb1";
			pstm = conn.prepareStatement(query);

			rs = pstm.executeQuery();

			if (rs != null) {
				while (rs.next()) {
					memberEntities.add(new MemberEntity((long) rs.getInt(1), rs.getString(2), rs.getString(3),
							rs.getInt(4), Role.valueOf(rs.getString(5)), rs.getTimestamp(6).toLocalDateTime(), null));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (pstm != null)
					pstm.close();
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return memberEntities;
	}

	public MemberEntity findById(Long memberId) {
		Connection conn = null;
		PreparedStatement pstm = null;
		String query = "";
		ResultSet rs = null;

		MemberEntity memberEntity = null;

		try {
			conn = DbConnect.getConnection();
			query = "select * from member_tb1 where member_id=? ";
			pstm = conn.prepareCall(query);

			pstm.setLong(1, memberId);

			rs = pstm.executeQuery(); // select

			while (rs.next()) {
				memberEntity = new MemberEntity((long) rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),
						Role.valueOf(rs.getString(5)), rs.getTimestamp(6).toLocalDateTime(), null);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (pstm != null)
					pstm.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return memberEntity;
	}

}
