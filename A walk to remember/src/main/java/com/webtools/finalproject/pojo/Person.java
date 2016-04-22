package com.webtools.finalproject.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

@Entity
@Table(name="PERSON")
@Inheritance(strategy=InheritanceType.JOINED) 
public class Person {
	
	@Id
	@GeneratedValue
	@Column(name = "personID", unique=true, nullable = false)
	private long personID;

	
	public enum Roles {
	   ADMIN, ADVERTISER, USER
	};
		
	  @Enumerated(EnumType.STRING)
	  @Column(name = "role")
	  private Roles roles;  

	  
	  public Roles getRoles() {
			return roles;
		}
//	  public Roles getRole() 
//	  {
//	     return roles;
//	  }
//	 
//	 	  
	  
	public void setRoles(Roles roles) {
		this.roles = roles;
	}


	@Column(name = "firstName")
	private String firstName;
	
	@Column(name ="lastName")
	private String lastName;
	
	@Column(name ="userName")
	private String userName;
	
	@Column(name ="password")
	private String password;
	
	
	
	public Person(){
		
	}

	public long getPersonID() {
		return personID;
	}

	public void setPersonID(long personID) {
		this.personID = personID;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

}
