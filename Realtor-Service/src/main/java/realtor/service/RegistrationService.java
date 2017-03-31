package realtor.service;

import realtor.domain.Registration;

import java.io.Serializable;
import java.util.List;

public interface RegistrationService {

    Registration byId(Integer id);

    Serializable save(Registration object);

    void update(Registration object);

    void remove(Registration object);

    List<Registration> getList();
}
