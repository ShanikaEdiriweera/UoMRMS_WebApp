package com.mycompany.uomrmsweb.model;

/**
 *
 * @author Shanika Ediriweera
 */
public class Faculty {
    private final int ID;
    private String name;
    
    /**
     *
     * @param ID
     * @param name
     */
    public Faculty(int ID, String name){
        this.ID = ID;
        this.name = name;
    }

    public int getID() {
        return ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
