package realtor.service;

import realtor.domain.Building;

import java.io.Serializable;
import java.util.List;


public interface BuildingService {

    Building byId(Integer id);

    Serializable save(Building object);

    void update(Building object);

    void remove(Building object);

    List<Building> getList();
}
