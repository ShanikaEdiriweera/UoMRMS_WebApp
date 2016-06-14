package com.mycompany.uomrmsweb.model;

/**
 *
 * @author Shanika Ediriweera
 */
public class ExaminationsStaff extends User{
    
    public ExaminationsStaff(String ID, String username, String password, String name, Gender gender, UserType userType, Department department, String state) {
        super(ID, username,password, name, gender, userType, department,state);
    }
    
}
