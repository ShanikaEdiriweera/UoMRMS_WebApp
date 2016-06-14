//package com.mycompany.uomrmsweb.model;
//
//import java.util.HashSet;
//import java.util.Set;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.JoinTable;
//import javax.persistence.ManyToMany;
//import javax.persistence.Table;
//
//import com.mycompany.uomrmsweb.model.UserType;
//
//@Entity
//@Table(name="APP_USER")
//public class User {
//
//	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
//	private int id;
//
//	@Column(name="USERNAME", unique=true, nullable=false)
//	private String username;
//	
//	@Column(name="PASSWORD", nullable=false)
//	private String password;
//		
//	@Column(name="FIRST_NAME", nullable=false)
//	private String firstName;
//
//	@Column(name="LAST_NAME", nullable=false)
//	private String lastName;
//
//	@Column(name="EMAIL", nullable=false)
//	private String email;
//
//	@Column(name="STATE", nullable=false)
//	private String state=State.ACTIVE.getState();
//
//        @Column(name ="USER_TYPE", nullable=true)
//        private UserType userType;
//      
//
//        //new constructor
//        public User(int id, String username, String password, String firstName, String lastName, String email, String state, UserType userType){
//            this.id = id;
//            this.username = username;
//            this.password = password;
//            this.firstName = firstName;
//            this.lastName = lastName;
//            this.email = email;
//            this.state =state;
//            this.userType = userType;
//        }
//                
//	public int getId() {
//		return id;
//	}
//
//	public void setId(int id) {
//		this.id = id;
//	}
//
//	public String getUsername() {
//		return username;
//	}
//
//	public void setUsername(String username) {
//		this.username = username;
//	}
//
//	public String getPassword() {
//		return password;
//	}
//
//	public void setPassword(String password) {
//		this.password = password;
//	}
//
//	public String getFirstName() {
//		return firstName;
//	}
//
//	public void setFirstName(String firstName) {
//		this.firstName = firstName;
//	}
//
//	public String getLastName() {
//		return lastName;
//	}
//
//	public void setLastName(String lastName) {
//		this.lastName = lastName;
//	}
//
//	public String getEmail() {
//		return email;
//	}
//
//	public void setEmail(String email) {
//		this.email = email;
//	}
//
//	public String getState() {
//		return state;
//	}
//
//	public void setState(String state) {
//		this.state = state;
//	}
//        
//        //added 
//        public UserType getUserType() {
//            return userType;
//        }
//
//        public void setUserType(UserType userType) {
//            this.userType = userType;
//        }
//        //
//
//	@Override
//	public int hashCode() {
//		final int prime = 31;
//		int result = 1;
//		result = prime * result + id;
//		result = prime * result + ((username == null) ? 0 : username.hashCode());
//		return result;
//	}
//
//	@Override
//	public boolean equals(Object obj) {
//		if (this == obj)
//			return true;
//		if (obj == null)
//			return false;
//		if (!(obj instanceof User))
//			return false;
//		User other = (User) obj;
//		if (id != other.id)
//			return false;
//		if (username == null) {
//			if (other.username != null)
//				return false;
//		} else if (!username.equals(other.username))
//			return false;
//		return true;
//	}
//
////	@Override
////	public String toString() {
////		return "User [id=" + id + ", username=" + username + ", password=" + password
////				+ ", firstName=" + firstName + ", lastName=" + lastName
////				+ ", email=" + email + ", state=" + state + ", userProfiles=" + userProfiles +"]";
////	}
//
//	
//}


package com.mycompany.uomrmsweb.model;


/**
 *
 * @author Shanika Ediriweera
 */
public class User {
    private String ID;
    private String username;
    private String password;
    private String name;
    private Gender gender;
    private UserType userType;
    private Department department;
    private String state=State.ACTIVE.getState();
    
    public User(String ID, String username, String password, String name, Gender gender, UserType userType, Department department, String state){
        this.ID = ID;
        this.username = username;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.userType = userType;
        this.department = department;
        this.state = state;
    }

    public String getID() {
        return ID;
    }

    public String getName() {
        return name;
    }

    public Gender getGender() {
        return gender;
    }

    public UserType getUserType() {
        return userType;
    }

    public Department getDepartment() {
        return department;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}

