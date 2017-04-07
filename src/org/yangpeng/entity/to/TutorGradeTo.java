package org.yangpeng.entity.to;

public class TutorGradeTo {
	private int tutorGradeId;
	private String gradeContxt;
	public int getTutorGradeId() {
		return tutorGradeId;
	}
	public void setTutorGradeId(int tutorGradeId) {
		this.tutorGradeId = tutorGradeId;
	}
	public String getGradeContxt() {
		return gradeContxt;
	}
	public void setGradeContxt(String gradeContxt) {
		this.gradeContxt = gradeContxt;
	}
	public TutorGradeTo(int tutorGradeId, String gradeContxt) {
		super();
		this.tutorGradeId = tutorGradeId;
		this.gradeContxt = gradeContxt;
	}
	public TutorGradeTo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
