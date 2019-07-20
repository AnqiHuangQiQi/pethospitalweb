package com.aq.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class AppoSave {
	
	private long appoId;
	private long doctorsId;
	private String doctorsNa;
	private String userNa;
	private String userPhon;
	private String userEmail;
	private String petType;
	private String petAge;
	private String petCond;
	private String note;
	private String reserve;
	

	public long getAppoId() {
		return appoId;
	}
	public void setAppoId(long appoId) {
		this.appoId = appoId;
	}
	public long getDoctorsId() {
		return doctorsId;
	}
	public void setDoctorsId(long doctorsId) {
		this.doctorsId = doctorsId;
	}
	public String getDoctorsNa() {
		return doctorsNa;
	}
	public void setDoctorsNa(String doctorsNa) {
		this.doctorsNa = doctorsNa;
	}
	public String getUserNa() {
		return userNa;
	}
	public void setUserNa(String userNa) {
		this.userNa = userNa;
	}
	public String getUserPhon() {
		return userPhon;
	}
	public void setUserPhon(String userPhon) {
		this.userPhon = userPhon;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getPetType() {
		return petType;
	}
	public void setPetType(String petType) {
		this.petType = petType;
	}
	public String getPetAge() {
		return petAge;
	}
	public void setPetAge(String petAge) {
		this.petAge = petAge;
	}
	public String getPetCond() {
		return petCond;
	}
	public void setPetCond(String petCond) {
		this.petCond = petCond;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getReserve() {
		return reserve;
	}
	public void setReserve(String reserve) {
		this.reserve = reserve;
	}
	
	
	
	
}
