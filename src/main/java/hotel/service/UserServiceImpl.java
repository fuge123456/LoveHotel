package hotel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hotel.mapper.UserMapper;
import hotel.pojo.User;

import java.util.List;
import java.util.Random;
import java.util.UUID;

/**
 * Created by BIG on 2017/9/13.
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;
    @Override
    public List<User> findAll() {
        return userMapper.findAll();
    }

    @Override
    public void saveUser(User user) {
    	Random ran = new Random();
    	user.setUserId(ran.nextInt());
        userMapper.saveUser(user);
    }

    @Override
    public int addUser(User user) {
    	Random ran = new Random();
    	user.setUserId(ran.nextInt());
        return userMapper.addUser(user);
    }

    @Override
    public User findUserByUP(String userName, String password) {
        return userMapper.findUserByUP(userName,password);
    }

    @Override
    public void updateState(String[] userIds, int state) {
        userMapper.updateState(userIds,state);
    }

    @Override
    public void deleteUser(String[] userIds) {
        userMapper.deleteUser(userIds);

    }

    @Override
    public User findUserById(String userId) {
        return userMapper.findUserById(userId);
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateUser(user);
    }
}
