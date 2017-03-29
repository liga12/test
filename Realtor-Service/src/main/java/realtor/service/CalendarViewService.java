package realtor.service;

import realtor.domain.CalendarView;

import java.io.Serializable;
import java.util.List;


public interface CalendarViewService {

    CalendarView byId(Integer id);

    Serializable save(CalendarView object);

    void update(CalendarView object);

    void remove(CalendarView object);

    List<CalendarView> getList();
}
