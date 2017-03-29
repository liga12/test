package realtor.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import realtor.domain.Building;
import realtor.domain.CalendarView;
import realtor.domain.User;
import realtor.service.BuildingService;
import realtor.service.CalendarViewService;
import realtor.service.UserService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private UserService userService;

    @Autowired
    private BuildingService buildingService;

    @Autowired
    private CalendarViewService calendarViewService;

//    @Autowired
//    private RegistrationService registrationService;

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String homePage(ModelMap model) {

        return "home";
    }

    @Transactional
    @RequestMapping(value = {"/products"}, method = RequestMethod.GET)
    public String productsPage(ModelMap model) throws ParseException {


        Building building = buildingService.byId(6);
        SimpleDateFormat sdf = new SimpleDateFormat("dd-M-yyyy kk:mm");


        for (int i = 0; i <5; i++) {
            GregorianCalendar calendar = new GregorianCalendar
                    (2017, 04, 12, i+9, 0, 0);

            CalendarView calendarView = new CalendarView();
            String date = sdf.format(calendar.getTime());
            Date dddd = sdf.parse(date);
            calendarView.setDateView(sdf.parse(date));
            System.out.println(sdf.parse(date));

            calendarView.setBuilding(building);
            calendarView.setState(true);
            calendarViewService.save(calendarView);
        }




//        building.setStreet("sfgdfg");
//        building.setHouse(34);
//        building.setUser(user);
//        buildingService.update(building);
//        String d = "333владимир333";
//        User user = userService.byId(15);
//        user.setName("111111");
//        userService.update(user);
//        user.setName(d);
//        user.setPatronymic(d);
//        user.setSurname(d);
//        user.setPhone(765756765);
//        user.setName(d);
//        userService.save(user);
        return "products";
    }

    @RequestMapping(value = {"/contactus"}, method = RequestMethod.GET)
    public String contactUsPage(ModelMap model) {
        return "contactus";
    }

//     GregorianCalendar calendar = new GregorianCalendar();
//
//    @RequestMapping(value = "/", method = RequestMethod.GET)
//    public String getHomePage() {
//        String d = "владимир";
//        User user = new User();
//        user.setName(d);
//        user.setPatronymic(d);
//        user.setSurname(d);
//        user.setPhone(765756765);
//        user.setName(d);
//        userService.save(user);
//        return "login";
//    }

//    @Transactional
//    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
//    public String homePage(ModelMap model) {
//        String d = "владимир";
//        User user = new User();
//        user.setName(d);
//        user.setPatronymic(d);
//        user.setSurname(d);
//        user.setPhone(765756765);
//        user.setName(d);
//        userService.save(user);
//        System.out.println(userService.getList());

//        calendar.setTimeZone(TimeZone.getTimeZone("GMT+3"));
//        User user = userService.byId(5);
//        Building building = new Building();
//        building.setAddress("sdkjfhdkjghd");
//        building.setStart(new GregorianCalendar(2017, 3, 6, 9,0));
//        building.setFinish(new GregorianCalendar(2017, 4, 6, 17,0));
//        building.setUser(user);
//        buildingService.save(building);

//        return "home";
//    }


//    @RequestMapping(value = "/", method = RequestMethod.GET)
//    @ResponseBody
//    public String getHomePage() {
//
//        return "login";
//    }
//
//    @Transactional
//    @ResponseBody
//    @RequestMapping(value = "/f", method = RequestMethod.GET)
//    public String getHomePage2() {
//        String d = "владимир";
//        User user = new User();
//        user.setName(d);
//        user.setPatronymic(d);
//        user.setSurname(d);
//        user.setPhone(765756765);
//        user.setName(d);
////        userService.save(user);
////        System.out.println(userService.getList());
//        return "home";
//    }


}
