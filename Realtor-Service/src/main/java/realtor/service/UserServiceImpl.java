package realtor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import realtor.domain.User;
import realtor.domain.UserDao;

import java.io.Serializable;
import java.util.List;

@Service
public class UserServiceImpl  implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User byId(Integer id) {
        return userDao.byId(id);
    }

    @Override
    public Serializable save(User object) {
        return userDao.save(object);
    }

    @Override
    public void update(User object) {
        userDao.update(object);
    }

    @Override
    public void remove(User object) {
        userDao.remove(object);
    }

    @Override
    public List<User> getList() {
        return (List<User>) userDao.getList();
    }
}
