package repository;

import model.Users;

import java.sql.SQLException;
import java.util.List;

public interface IUserRepository {
     void insertUser(Users user) throws SQLException;

     Users selectUser(int id);

     List<Users> selectAllUsers();

     List<Users> findByCountry(String country);

     boolean deleteUser(int id) throws SQLException;

     boolean updateUser(Users user) throws SQLException;

     List<Users> sortByName() throws SQLException;
}
