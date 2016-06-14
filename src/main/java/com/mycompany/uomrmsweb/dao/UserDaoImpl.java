package com.mycompany.uomrmsweb.dao;

import com.mycompany.uomrmsweb.model.Department;
import com.mycompany.uomrmsweb.model.Faculty;
import com.mycompany.uomrmsweb.model.Gender;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.mycompany.uomrmsweb.model.User;
import com.mycompany.uomrmsweb.model.UserType;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {

	public User findById(int id) {
		return getByKey(id);
	}

//	public User findByUsername(String username) {
//                //System.out.println(username);
////                System.exit(0);
//		Criteria crit = createEntityCriteria();
//		crit.add(Restrictions.eq("username", username));
//                //User user = (User)crit.uniqueResult();
//                //System.out.println(user.getUsername());
//                //System.out.println(user.getPassword());
//                //System.out.println(user.getUserType());
//		//return user;
//                return (User)crit.uniqueResult();
//	}
        
        public User findByUsername(String username){
            User user = null;
            DBHandler dBHandler = new DBHandler();
            //String query = "SELECT U.ID as U_ID,U.username,U.password,U.name as U_name,U.Gender,U.user_type,D.ID as D_ID,D.name as D_name,F.ID as F_ID, F.name as F_name FROM User U INNER JOIN Department D ON U.Department_ID=D.ID INNER JOIN Faculty F ON D.Faculty_ID=F.ID WHERE U.username = '"+username+"'";
            String query = "SELECT U.`ID` as U_ID,U.`username`,U.`password`,U.`name` as U_name,U.`Gender`,U.`user_type`,U.`state`,D.`ID` as D_ID,D.`name` as D_name,F.`ID` as F_ID, F.`name` as F_name FROM `User` U INNER JOIN `Department` D ON U.`Department_ID`=D.`ID` INNER JOIN `Faculty` F ON D.`Faculty_ID`=F.`ID` WHERE U.`username`= '"+username+"'";
            ResultSet userResultSet = dBHandler.getData(query);
            try {
                if(userResultSet.next()){
                    user = new User(userResultSet.getString("U_ID"), userResultSet.getString("username"), userResultSet.getString("password"), userResultSet.getString("U_name"), Gender.valueOf(userResultSet.getString("Gender")), UserType.valueOf(userResultSet.getString("user_type")), new Department(userResultSet.getInt("D_ID"), userResultSet.getString("D_name"), new Faculty(userResultSet.getInt("F_ID"), userResultSet.getString("F_name"))),userResultSet.getString("state"));
                }
            } catch (SQLException ex) {
                Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
            return user;
        }
	
}
