package hotel.service;

import java.util.List;

import hotel.pojo.User;

/**
 * Created by BIG on 2017/9/13.
 */
public interface UserService {
    public List<User> findAll();

    public void saveUser(User user);

    public int addUser(User user);

    public User findUserByUP(String userName, String password);

    public void updateState(String[] userIds, int state);

    public void deleteUser(String[] userIds);

    public User findUserById(String userId);

    public void updateUser(User user);
}
