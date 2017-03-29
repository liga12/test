package realtor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import realtor.domain.Building;
import realtor.domain.BuildingDao;

import java.io.Serializable;
import java.util.List;

@Service
public class BuildingServiceImpl implements BuildingService {

    @Autowired
    private BuildingDao buildingDao;

    @Override
    public Building byId(Integer id) {
        return buildingDao.byId(id);
    }

    @Override
    public Serializable save(Building object) {
        return buildingDao.save(object);
    }

    @Override
    public void update(Building object) {
        buildingDao.update(object);
    }

    @Override
    public void remove(Building object) {
        buildingDao.remove(object);
    }

    @Override
    public List<Building> getList() {
        return  buildingDao.getList();
    }
}

