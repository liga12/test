package realtor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import realtor.domain.Registration;
import realtor.domain.RegistrationDao;

import java.io.Serializable;
import java.util.List;

@Service
public class RegistrationServiceImpl implements RegistrationService {


    @Autowired
    private RegistrationDao registrationDao;

    @Override
    public Registration byId(Integer id) {
        return registrationDao.byId(id);
    }

    @Override
    public Serializable save(Registration object) {
        return registrationDao.save(object);
    }

    @Override
    public void update(Registration object) {
        registrationDao.update(object);
    }

    @Override
    public void remove(Registration object) {
        registrationDao.remove(object);
    }

    @Override
    public List<Registration> getList() {
        return (List<Registration>) registrationDao.getList();
    }
}
