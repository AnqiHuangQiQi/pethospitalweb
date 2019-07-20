package com.aq.model;

public class doctors_bean {
	//model class
	//connect with table 
	private long doctorId;
	private String doctor_Na;
	private String doctor_Ma;
	private String doctor_Wo;
	private String doctor_Em;
	private String doctor_No;
	private String doctor_Ph;
	
	public String getDoctor_No() {
		return doctor_No;
	}

	public void setDoctor_No(String doctor_No) {
		this.doctor_No = doctor_No;
	}

	public String getDoctor_Em() {
		return doctor_Em;
	}

	public void setDoctor_Em(String doctor_Em) {
		this.doctor_Em = doctor_Em;
	}



	public long getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(long doctorId) {
		this.doctorId = doctorId;
	}

	public String getDoctor_Na() {
		return doctor_Na;
	}

	public void setDoctor_Na(String doctor_Na) {
		this.doctor_Na = doctor_Na;
	}

	public String getDoctor_Ma() {
		return doctor_Ma;
	}

	public void setDoctor_Ma(String doctor_Ma) {
		this.doctor_Ma = doctor_Ma;
	}

	public String getDoctor_Wo() {
		return doctor_Wo;
	}

	public void setDoctor_Wo(String doctor_Wo) {
		this.doctor_Wo = doctor_Wo;
	}

	public String getDoctor_Ph() {
		return doctor_Ph;
	}

	public void setDoctor_Ph(String doctor_Ph) {
		this.doctor_Ph = doctor_Ph;
	}
	
	
}
