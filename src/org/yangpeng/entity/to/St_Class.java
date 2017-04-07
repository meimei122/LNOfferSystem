package org.yangpeng.entity.to;

public class St_Class {
	private int classId;
	private String className;
	private int classtype;
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public int getClasstype() {
		return classtype;
	}
	public void setClasstype(int classtype) {
		this.classtype = classtype;
	}
	public St_Class(int classId, String className, int classtype) {
		super();
		this.classId = classId;
		this.className = className;
		this.classtype = classtype;
	}
	public St_Class() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
