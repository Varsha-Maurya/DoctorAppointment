package com.models;
public class Doctor {

	private String firstName;
	private String lastName;
	private String email;
	private String contact;
	private String specialization;
	private String createdAt;
	private String hospitalName;
	private String hospitalAddress;
	private String doctorID;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getSpecialization() {
		return specialization;
	}

	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}

	public String getLocation() {
		return hospitalAddress;
	}

	public void setLocation(String hospitalAddress) {
		this.hospitalAddress = hospitalAddress;
	}
	public String gethospitalName() {
		return hospitalName;
	}

	public void sethospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}

	public String getId() {
		return doctorID;
	}

	public void setId(String doctorID) {
		this.doctorID = doctorID;
	}

}
