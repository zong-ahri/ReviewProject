package border;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import Beans.BorderDtlBean;
import Beans.BorderMstBean;
import Beans.ContentBean;
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
	
	//dtl 리스트 추가
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

	// 사이드바 목차 추가 메서드
	public boolean BorderContentInsert(BorderDtlBean borderDtlBean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		
		try {
			con = pool.getConnection();
			sql = "select max(border_seq) from border_dtl where border_code = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, borderDtlBean.getBorder_code());
			rs = pstmt.executeQuery();
			rs.next();
			int maxSeq = rs.getInt(1);
			pstmt.close();
			sql = "insert into border_dtl values(?,?,?, now(), now())";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, borderDtlBean.getBorder_code());
			pstmt.setInt(2, maxSeq+1);
			pstmt.setString(3, borderDtlBean.getBorder_title());
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return true;
		
	}
	
	// 사이드바 보더 제목 추가
	public boolean BorderTitleInsert(BorderMstBean borderMstBean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		
		try {
			con = pool.getConnection();
			sql = "select max(border_code) from border_mst";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			int maxCode = rs.getInt(1);
			pstmt.close();
			sql = "insert into border_mst values(?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, maxCode+1);
			pstmt.setString(2, borderMstBean.getBorder_name());
			pstmt.executeUpdate();
		
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return true;
		
	}
	
	
	
	// 사이드바 Name 삭제 메서드
	public boolean BorderNamedelete(BorderMstBean bordermstBean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
	
		
		try {
			con = pool.getConnection();
			sql = "DELETE FROM border_mst WHERE Border_code = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bordermstBean.getBorder_code());
			pstmt.executeUpdate();
			pstmt.close();
			sql = "DELETE FROM border_dtl WHERE Border_code = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bordermstBean.getBorder_code());
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
			
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return true;		
		
		
	}
	
	// 사이드바 title 삭제 메서드
	
		public boolean BorderTitledelete(BorderDtlBean borderDtlBean) {
			Connection con = null;
			PreparedStatement pstmt = null;
			String sql = null;
			
			try {
				con = pool.getConnection();
				sql = "DELETE FROM border_dtl WHERE Border_code = ? and Border_seq = ? ";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, borderDtlBean.getBorder_code());
				pstmt.setInt(2, borderDtlBean.getBorder_seq());
				pstmt.executeUpdate();
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt);;
			}
			return true;		
			
			
		}

	//게시판 컨텐츠테이블 
	public ArrayList<ContentBean> getContentBorderList(int border_code, int border_seq) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ArrayList<ContentBean> list = new ArrayList<ContentBean>();
		
		try {
			con = pool.getConnection();
			sql = "select * from border_main where border_code = ? and border_seq = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, border_code);
			pstmt.setInt(2, border_seq);
			rs = pstmt.executeQuery();
			int i = 1;
			while(rs.next()) {
				ContentBean bean = new ContentBean();
				bean.setBorder_code(rs.getInt(1));
				bean.setBorder_seq(rs.getInt(2));
				bean.setBorder_number(rs.getInt(3));
				bean.setBorder_index(i++);
				bean.setBorder_name(rs.getString(4));
				bean.setBorder_like(rs.getInt(5));
				bean.setBorder_count(rs.getInt(6));
				bean.setUpdatedate(rs.getString(8));
		    	list.add(bean);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return list;
	}
	
//writing
	
	public boolean borderWritingInsert(ContentBean contentbean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		
		try {
			con = pool.getConnection();
			sql = "select max(border_number) from border_main where border_code = ? and border_seq = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, contentbean.getBorder_code());
			pstmt.setInt(2, contentbean.getBorder_seq());
			rs = pstmt.executeQuery();
			rs.next();
			int maxBorder_number = rs.getInt(1)+1;
			rs.close();
			pstmt.close();
			sql = "insert into border_main(border_code, border_seq, border_number, border_name, border_content, createdate, updatedate) values(?, ?, ?, ?, ?,  now(), now())";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, contentbean.getBorder_code());
			pstmt.setInt(2, contentbean.getBorder_seq());
			pstmt.setInt(3, maxBorder_number);
			pstmt.setString(4,  contentbean.getBorder_name());
			pstmt.setString(5, contentbean.getBorder_content());
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, pstmt);
		}
		return true;
		
	}
	
	
	public String getBorderTitle(int border_code, int border_seq) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		
		try {
			con = pool.getConnection();
			sql = "select border_title from border_dtl where border_code = ? and border_seq = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, border_code);
			pstmt.setInt(2, border_seq);
			rs = pstmt.executeQuery();
			rs.next();
			return rs.getString(1);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return "";
	
	}
	/*
	public ArrayList<ContentBean> getBorderList(String filter) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ArrayList<BorderDtlBean> list = new ArrayList<BorderDtlBean>();
		try {
			con = pool.getConnection();
			if(filter.equals("Number")) {
				sql = "select border_number, border_name, border_update, border_like, border_count from border_main where Number like ? order by border_code desc";
			}
			else if(filter.equals("Update")) {
				sql = "select border_number, border_name, border_update, border_like, border_count from border_main where Update like ? order by border_code desc";				
			}
			else if(filter.equals("Like")) {
				sql = "select border_number, border_name, border_update, border_like, border_count from border_main where Like like ? order by border_code desc";
			}
			else if(filter.equals("count")) {
				sql = "select border_number, border_name, border_update, border_like, border_count from border_main where count like ? order by border_code desc";
			}
			rs = pstmt.executeQuery();
		
			while(rs.next()) {
			ContentBean bean = new ContentBean();
			bean.setBorder_number(rs.getInt(1));
			bean.setBorder_name(rs.getString(2));
			bean.setUpdatedate(rs.getString(3));
			bean.setBorder_like(rs.getInt(4));
			bean.setBorder_count(rs.getInt(5));				
			list.add(bean);
			}
		}catch (Exception e) {	
			e.printStackTrace();
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return list;
		
		}
*/


}
