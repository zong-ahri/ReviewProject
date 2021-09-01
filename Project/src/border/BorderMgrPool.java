package border;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import Beans.BorderDtlBean;
import Beans.BorderMstBean;
import Beans.UserBean;
import db.DBConnectionMgr;

public class BorderMgrPool {
private DBConnectionMgr pool = null;
	
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	Date now = new Date();
	String nowDate = dateFormat.format(now);
	
	public BorderMgrPool() {
		try {
			pool = DBConnectionMgr.getInstance();
		}catch(Exception e) {
			System.out.println("오류: DBConnection Pool 실패.");
		}
	}
	
	public ArrayList<BorderMstBean> getBorderMstList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ArrayList<BorderMstBean> list = new ArrayList<BorderMstBean>();
		
		try {
			con = pool.getConnection();
			sql = "select * from border_mst";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BorderMstBean bean = new BorderMstBean();
				bean.setBorder_code(rs.getInt(1));
				bean.setBorder_name(rs.getString(2));
				bean.setBorder_dtlList(getBorderDtlList(rs.getInt(1)));
		    	list.add(bean);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return list;
	}
	
	public ArrayList<BorderDtlBean> getBorderDtlList(int border_code) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ArrayList<BorderDtlBean> list = new ArrayList<BorderDtlBean>();
		
		try {
			con = pool.getConnection();
			sql = "select * from border_dtl where border_code = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, border_code);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BorderDtlBean bean = new BorderDtlBean();
				
				bean.setBorder_code(rs.getInt(1));
				bean.setBorder_seq(rs.getInt(2));
				bean.setBorder_title(rs.getString(3));
		    	list.add(bean);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return list;
	}

	// 사이드바 title 추가 메서드
	public boolean BorderInsert(BorderDtlBean borderDtlBean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		
		try {
			con = pool.getConnection();
			sql = "insert into BorderMstBean(border_code, border_seq, border_title)"
					+ "values(?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, borderDtlBean.getBorder_code());
			pstmt.setInt(2, borderDtlBean.getBorder_seq());
			pstmt.setString(3, borderDtlBean.getBorder_title());
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			pool.freeConnection(con, pstmt);
		}
		return true;
		
	}
	
	
	
	
	// 게시글 삭제 메서드
	public boolean Borderdelete(BorderDtlBean borderDtlBean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean result = false;
		
		try {
			con = pool.getConnection();
			sql = "DELETE FROM BorderDtlBean WHERE Border_code = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, borderDtlBean.getBorder_code());
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);;
		}
		return result;		
		
		
	}
	

}
