package realtor.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import realtor.domain.Building;
import realtor.domain.CalendarView;
import realtor.domain.Registration;
import realtor.domain.User;
import realtor.service.BuildingService;
import realtor.service.CalendarViewService;
import realtor.service.RegistrationService;
import realtor.service.UserService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

@Controller
public class HomeController {
    @Autowired
    private BuildingService buildingService;

    @Autowired
    private CalendarViewService calendarViewService;

    @Autowired
    private RegistrationService registrationService;

    @Transactional
    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView modelAndView = new ModelAndView("home");
        List<Building> buildings = buildingService.getList();
        modelAndView.addObject("buildings", buildings);
        return modelAndView;
    }

    @Transactional
    @RequestMapping(value = {"/registration"}, method = RequestMethod.POST)
    public String getRegistration(@RequestParam("name") String name,@RequestParam("surname") String surname,
                                        @RequestParam("patronymic") String patronymic,@RequestParam("phone") String phone,
                                        @RequestParam("date") String option) {
        System.out.println(name+" "+surname+" "+patronymic+" "+phone+" "+option);
        CalendarView calendarView = calendarViewService.byId(Integer.valueOf(option));
        Registration registration = new Registration(surname, name, patronymic, phone,calendarView);
        registrationService.save(registration);
        calendarView.setState(false);
        calendarViewService.update(calendarView);
        return "redirect:/";
    }

    @RequestMapping(value = {"/contactus"}, method = RequestMethod.GET)
    public String contactUsPage(ModelMap model) {
        return "contactus";
    }
}
