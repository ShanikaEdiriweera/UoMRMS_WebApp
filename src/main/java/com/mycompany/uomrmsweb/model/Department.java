package com.mycompany.uomrmsweb.model;

/**
 *
 * @author Shanika Ediriweera
 */
public class Department {
    private int ID;
    private String name;
    private Faculty faculty;

    public Department(int ID, String name, Faculty faculty){
        this.ID = ID;
        this.name = name;
        this.faculty = faculty;
    }

    public int getID() {
        return ID;
    }

    public String getName() {
        return name;
    }

    public Faculty getFaculty() {
        return faculty;
    }
    
    public void setName(String name) {
        this.name = name;
    }
}
