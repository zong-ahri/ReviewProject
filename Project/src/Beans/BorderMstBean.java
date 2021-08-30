package Beans;

import java.util.ArrayList;

public class BorderMstBean {
	private int border_code;
	private String border_name;
	private ArrayList<BorderDtlBean> border_dtlList;
	
	public int getBorder_code() {
		return border_code;
	}
	public void setBorder_code(int border_code) {
		this.border_code = border_code;
	}
	public String getBorder_name() {
		return border_name;
	}
	public void setBorder_name(String border_name) {
		this.border_name = border_name;
	}
	public ArrayList<BorderDtlBean> getBorder_dtlList() {
		return border_dtlList;
	}
	public void setBorder_dtlList(ArrayList<BorderDtlBean> border_dtlList) {
		this.border_dtlList = border_dtlList;
	}
}
