package org.yangpeng.entity.dto;

public class TutorDto {
	private String tutorId;
	private String tutorName;
	private String gradeContxt;
	private String statusMes;
	private String classname;
	private String tutorContxt;
	private String methodContext;
	private String priceNumber;
	private String timeContxt;
	private String tutorDate;
	private String tutorPresent;
	private String statusId;
	public String getTutorName() {
		return tutorName;
	}
	public void setTutorName(String tutorName) {
		this.tutorName = tutorName;
	}
	public String getGradeContxt() {
		return gradeContxt;
	}
	public void setGradeContxt(String gradeContxt) {
		this.gradeContxt = gradeContxt;
	}
	public String getStatusMes() {
		return statusMes;
	}
	public void setStatusMes(String statusMes) {
		this.statusMes = statusMes;
	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public String getTutorContxt() {
		return tutorContxt;
	}
	public void setTutorContxt(String tutorContxt) {
		this.tutorContxt = tutorContxt;
	}
	public String getMethodContext() {
		return methodContext;
	}
	public void setMethodContext(String methodContext) {
		this.methodContext = methodContext;
	}
	public String getPriceNumber() {
		return priceNumber;
	}
	public void setPriceNumber(String priceNumber) {
		this.priceNumber = priceNumber;
	}
	public String getTimeContxt() {
		return timeContxt;
	}
	public void setTimeContxt(String timeContxt) {
		this.timeContxt = timeContxt;
	}
	public String getTutorDate() {
		return tutorDate;
	}
	public void setTutorDate(String tutorDate) {
		this.tutorDate = tutorDate;
	}
	public String getTutorPresent() {
		return tutorPresent;
	}
	public void setTutorPresent(String tutorPresent) {
		this.tutorPresent = tutorPresent;
	}
	
	public TutorDto() {
		super();
	}
	public String getStatusId() {
		return statusId;
	}
	public void setStatusId(String statusId) {
		this.statusId = statusId;
	}
	public String getTutorId() {
		return tutorId;
	}
	public void setTutorId(String tutorId) {
		this.tutorId = tutorId;
	}
	public TutorDto(String tutorId, String tutorName, String gradeContxt,
			String statusMes, String classname, String tutorContxt,
			String methodContext, String priceNumber, String timeContxt,
			String tutorDate, String tutorPresent, String statusId) {
		super();
		this.tutorId = tutorId;
		this.tutorName = tutorName;
		this.gradeContxt = gradeContxt;
		this.statusMes = statusMes;
		this.classname = classname;
		this.tutorContxt = tutorContxt;
		this.methodContext = methodContext;
		this.priceNumber = priceNumber;
		this.timeContxt = timeContxt;
		this.tutorDate = tutorDate;
		this.tutorPresent = tutorPresent;
		this.statusId = statusId;
	}
	
	
}
