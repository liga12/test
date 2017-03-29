package realtor.service;

import realtor.domain.User;

import java.io.Serializable;
import java.util.List;

public interface UserService  {

    User byId(Integer id);

    Serializable save(User object);

    void update(User object);

    void remove(User object);

    List<User> getList();
}
