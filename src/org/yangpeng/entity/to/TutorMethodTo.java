package org.yangpeng.entity.to;

public class TutorMethodTo {
	private int methodId;
	private String methodContext;
	public int getMethodId() {
		return methodId;
	}
	public void setMethodId(int methodId) {
		this.methodId = methodId;
	}
	public String getMethodContext() {
		return methodContext;
	}
	public void setMethodContext(String methodContext) {
		this.methodContext = methodContext;
	}
	public TutorMethodTo(int methodId, String methodContext) {
		super();
		this.methodId = methodId;
		this.methodContext = methodContext;
	}
	public TutorMethodTo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
