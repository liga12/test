package realtor.web;

import realtor.domain.CalendarView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;

public class Main {
    public static void main(String[] args) throws ParseException {
        GregorianCalendar calendar = new GregorianCalendar
                (2017, 04, 12, 9, 0);
        SimpleDateFormat sdf = new SimpleDateFormat("dd-M-yyyy kk:mm");

        String date = sdf.format(calendar.getTime());
        Date dddd = sdf.parse(date);
        System.out.println(dddd);

    }
}
