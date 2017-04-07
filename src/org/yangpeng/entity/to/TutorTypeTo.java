package org.yangpeng.entity.to;

public class TutorTypeTo {
	private int tutorTypeId;
	private String tutorContxt;
	public int getTutorTypeId() {
		return tutorTypeId;
	}
	public void setTutorTypeId(int tutorTypeId) {
		this.tutorTypeId = tutorTypeId;
	}
	public String getTutorContxt() {
		return tutorContxt;
	}
	public void setTutorContxt(String tutorContxt) {
		this.tutorContxt = tutorContxt;
	}
	public TutorTypeTo(int tutorTypeId, String tutorContxt) {
		super();
		this.tutorTypeId = tutorTypeId;
		this.tutorContxt = tutorContxt;
	}
	public TutorTypeTo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
