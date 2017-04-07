package org.yangpeng.entity.to;

public class securityQuestionTo {
	private Integer questionId;
	private String  problemContent;
	public Integer getQuestionId() {
		return questionId;
	}
	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
	}
	public String getProblemContent() {
		return problemContent;
	}
	public void setProblemContent(String problemContent) {
		this.problemContent = problemContent;
	}
	public securityQuestionTo(Integer questionId, String problemContent) {
		super();
		this.questionId = questionId;
		this.problemContent = problemContent;
	}
	public securityQuestionTo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
