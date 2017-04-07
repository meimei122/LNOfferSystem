package org.yangpeng.entity;

import java.util.HashMap;
import java.util.Map;

/**
 * 家教
 * @author Think
 *
 */
public class Tutor {
	private Integer tutorId; 
	private String  tutorName;
	private String  tutorSexId;
	private String  tutorTypeId;
	private String  tutorGradeId;
	private String  tutorPhone;
	private String  tutorEmail;
	private String  tutorSubject;
	private String  tutorAge;
	private String  tutorTimeId;
	private String  tutorPresent;
	private String  tutorDate;
	private String  menthId;
	private String  priceId;
	private String  adminId;
	private String  statusId;
	public Integer getTutorId() {
		return tutorId;
	}
	public void setTutorId(Integer tutorId) {
		this.tutorId = tutorId;
	}
	public String getTutorName() {
		return tutorName;
	}
	public void setTutorName(String tutorName) {
		this.tutorName = tutorName;
	}
	public String getTutorTypeId() {
		return tutorTypeId;
	}
	public void setTutorTypeId(String tutorTypeId) {
		this.tutorTypeId = tutorTypeId;
	}
	public String getTutorGradeId() {
		return tutorGradeId;
	}
	public void setTutorGradeId(String tutorGradeId) {
		this.tutorGradeId = tutorGradeId;
	}
	public String getTutorPhone() {
		return tutorPhone;
	}
	public void setTutorPhone(String tutorPhone) {
		this.tutorPhone = tutorPhone;
	}
	public String getTutorEmail() {
		return tutorEmail;
	}
	public void setTutorEmail(String tutorEmail) {
		this.tutorEmail = tutorEmail;
	}
	public String getTutorSubject() {
		return tutorSubject;
	}
	public void setTutorSubject(String tutorSubject) {
		this.tutorSubject = tutorSubject;
	}
	public String getTutorAge() {
		return tutorAge;
	}
	public void setTutorAge(String tutorAge) {
		this.tutorAge = tutorAge;
	}
	public String getTutorTimeId() {
		return tutorTimeId;
	}
	public void setTutorTimeId(String tutorTimeId) {
		this.tutorTimeId = tutorTimeId;
	}
	public String getTutorPresent() {
		return tutorPresent;
	}
	public void setTutorPresent(String tutorPresent) {
		this.tutorPresent = tutorPresent;
	}
	
	public String getTutorDate() {
		return tutorDate;
	}
	public void setTutorDate(String tutorDate) {
		this.tutorDate = tutorDate;
	}
	public String getMenthId() {
		return menthId;
	}
	public void setMenthId(String menthId) {
		this.menthId = menthId;
	}
	public Tutor() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Tutor(Integer tutorId, String tutorName, String tutorTypeId,
			String tutorGradeId, String tutorPhone, String tutorEmail,
			String tutorSubject, String tutorAge, String tutorTimeId,
			String tutorPresent, String tutorDate, String menthId) {
		super();
		this.tutorId = tutorId;
		this.tutorName = tutorName;
		this.tutorTypeId = tutorTypeId;
		this.tutorGradeId = tutorGradeId;
		this.tutorPhone = tutorPhone;
		this.tutorEmail = tutorEmail;
		this.tutorSubject = tutorSubject;
		this.tutorAge = tutorAge;
		this.tutorTimeId = tutorTimeId;
		this.tutorPresent = tutorPresent;
		this.tutorDate = tutorDate;
		this.menthId = menthId;
	}
	public String getTutorSexId() {
		return tutorSexId;
	}
	
	public String getPriceId() {
		return priceId;
	}
	public void setPriceId(String priceId) {
		this.priceId = priceId;
	}
	public Tutor(String tutorName, String tutorSexId, String tutorTypeId,
			String tutorGradeId, String tutorPhone, String tutorEmail,
			String tutorSubject, String tutorAge, String tutorTimeId,
			String tutorPresent, String menthId, String priceId) {
		super();
		this.tutorName = tutorName;
		this.tutorSexId = tutorSexId;
		this.tutorTypeId = tutorTypeId;
		this.tutorGradeId = tutorGradeId;
		this.tutorPhone = tutorPhone;
		this.tutorEmail = tutorEmail;
		this.tutorSubject = tutorSubject;
		this.tutorAge = tutorAge;
		this.tutorTimeId = tutorTimeId;
		this.tutorPresent = tutorPresent;
		this.menthId = menthId;
		this.priceId = priceId;
	}
	
	public Map<String,Object> getTutorMap(Tutor tutor){
		Map<String,Object> map = new HashMap<>();
		map.put("tutorName", tutor.getTutorName());
		map.put("tutorSexId", Integer.parseInt(tutor.getTutorSexId()));
		map.put("tutorTypeId", Integer.parseInt(tutor.getTutorTypeId()));
		map.put("tutorGradeId", Integer.parseInt(tutor.getTutorGradeId()));
		map.put("tutorTimeId", Integer.parseInt(tutor.getTutorTimeId()));
		map.put("menthId", Integer.parseInt(tutor.getMenthId()));
		map.put("priceId", Integer.parseInt(tutor.getPriceId()));
		map.put("tutorPhone",tutor.getTutorPhone() );
		map.put("tutorEmail",tutor.getTutorEmail() );
		map.put("tutorSubject", tutor.getTutorSubject());
		map.put("tutorAge", tutor.getTutorAge());
		map.put("tutorDate",tutor.getTutorDate() );
		map.put("tutorPresent",tutor.getTutorPresent());
		map.put("adminId",Integer.parseInt(tutor.getAdminId()));
		map.put("status", 1);
		return map;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public void setTutorSexId(String tutorSexId) {
		this.tutorSexId = tutorSexId;
	}
	public Tutor(String tutorName, String tutorSexId, String tutorTypeId,
			String tutorGradeId, String tutorPhone, String tutorEmail,
			String tutorSubject, String tutorAge, String tutorTimeId,
			String tutorPresent, String tutorDate, String menthId,
			String priceId, String adminId) {
		super();
		this.tutorName = tutorName;
		this.tutorSexId = tutorSexId;
		this.tutorTypeId = tutorTypeId;
		this.tutorGradeId = tutorGradeId;
		this.tutorPhone = tutorPhone;
		this.tutorEmail = tutorEmail;
		this.tutorSubject = tutorSubject;
		this.tutorAge = tutorAge;
		this.tutorTimeId = tutorTimeId;
		this.tutorPresent = tutorPresent;
		this.tutorDate = tutorDate;
		this.menthId = menthId;
		this.priceId = priceId;
		this.adminId = adminId;
	}
	@Override
	public String toString() {
		return "Tutor [tutorId=" + tutorId + ", tutorName=" + tutorName
				+ ", tutorSexId=" + tutorSexId + ", tutorTypeId=" + tutorTypeId
				+ ", tutorGradeId=" + tutorGradeId + ", tutorPhone="
				+ tutorPhone + ", tutorEmail=" + tutorEmail + ", tutorSubject="
				+ tutorSubject + ", tutorAge=" + tutorAge + ", tutorTimeId="
				+ tutorTimeId + ", tutorPresent=" + tutorPresent
				+ ", tutorDate=" + tutorDate + ", menthId=" + menthId
				+ ", priceId=" + priceId + ", adminId=" + adminId + "]";
	}
	public String getStatusId() {
		return statusId;
	}
	public void setStatusId(String statusId) {
		this.statusId = statusId;
	}
	
}
