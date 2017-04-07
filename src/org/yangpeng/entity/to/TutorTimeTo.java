package org.yangpeng.entity.to;

public class TutorTimeTo {
	private int tutorTimeId;
	private String timeContxt;
	public int getTutorTimeId() {
		return tutorTimeId;
	}
	public void setTutorTimeId(int tutorTimeId) {
		this.tutorTimeId = tutorTimeId;
	}
	public String getTimeContxt() {
		return timeContxt;
	}
	public void setTimeContxt(String timeContxt) {
		this.timeContxt = timeContxt;
	}
	public TutorTimeTo(int tutorTimeId, String timeContxt) {
		super();
		this.tutorTimeId = tutorTimeId;
		this.timeContxt = timeContxt;
	}
	public TutorTimeTo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
