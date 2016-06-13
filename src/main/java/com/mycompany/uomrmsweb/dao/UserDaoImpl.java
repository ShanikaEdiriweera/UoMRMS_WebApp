package com.mycompany.uomrmsweb.dao;

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
            String query = "SELECT * FROM APP_USER WHERE username = '"+username+"'";
            ResultSet userResultSet = DBHandler.getData(query);
            try {
                if(userResultSet.next()){
                    user = new User(userResultSet.getInt("id"), userResultSet.getString("username"), userResultSet.getString("password"), userResultSet.getString("first_name"), userResultSet.getString("last_name"), userResultSet.getString("email"), userResultSet.getString("state"),UserType.valueOf(userResultSet.getString("user_type")));
                    //user = new User(userResultSet.getInt("id"), userResultSet.getString("username"), userResultSet.getString("password"), userResultSet.getString("first_name"), userResultSet.getString("last_name"), userResultSet.getString("email"), userResultSet.getString("state"));
                }
            } catch (SQLException ex) {
                Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
            return user;
        }
	
}
