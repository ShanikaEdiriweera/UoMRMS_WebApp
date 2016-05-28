package com.shanika.uomrmsweb.Logic;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Shanika Ediriweera
 */
public class ResultsHandler {
    public String resultsFilePath = "Results.xlsx";
    
    //add test
    //method to return ModuleGrade array
    public ModuleGrade[] setModuleGrades(String moduleCode, int semesterId, String textBoxString){
        List moduleGrades = new ArrayList();
        String[] textBoxArray = textBoxString.split("([ ]|[\n])");
        String studentId = "";
        String grade = "";
        
        int counter = 1;

        for(String textBoxElement : textBoxArray){
            //textBoxArray has both ids and grades
            if(counter%2 == 1){
                studentId = textBoxElement;
            }else{
                grade = textBoxElement;
                
                //creating Modulegrade object
                ModuleGrade moduleGrade = new ModuleGrade(studentId, moduleCode, semesterId, grade);
                moduleGrades.add(moduleGrade);
            }
            counter++;
        }
        return (ModuleGrade[]) moduleGrades.toArray(new ModuleGrade[moduleGrades.size()]);
    }  
    
}
