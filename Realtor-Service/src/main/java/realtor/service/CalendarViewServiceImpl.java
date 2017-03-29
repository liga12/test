package realtor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import realtor.domain.CalendarView;
import realtor.domain.CalendarViewDao;

import java.io.Serializable;
import java.util.List;

@Service
public class CalendarViewServiceImpl implements CalendarViewService {

    @Autowired
    private CalendarViewDao calendarViewDao;

    @Override
    public CalendarView byId(Integer id) {
        return calendarViewDao.byId(id);
    }

    @Override
    public Serializable save(CalendarView object) {
        return calendarViewDao.save(object);
    }

    @Override
    public void update(CalendarView object) {
        calendarViewDao.update(object);
    }

    @Override
    public void remove(CalendarView object) {
        calendarViewDao.remove(object);
    }

    @Override
    public List<CalendarView> getList() {
        return (List<CalendarView>) calendarViewDao.getList();
    }
}
