package hotel.mapper;

import org.apache.ibatis.annotations.Param;

import hotel.pojo.User;

import java.util.List;

/**
 * Created by BIG on 2017/9/13.
 */
public interface UserMapper {
    public List<User> findAll();

    public void saveUser(User user);

    public int addUser(User user);

    public User findUserByUP(@Param("username") String userName,@Param("password") String password);

    public void updateState(String[] userIds, int state);

    public void deleteUser(String[] userIds);

    public User findUserById(String userId);

    public void updateUser(User user);
}
