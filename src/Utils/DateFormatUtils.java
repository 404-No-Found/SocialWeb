package Utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormatUtils {
    public static String dateFormat(String str) throws ParseException {
        StringBuilder sb = new StringBuilder(str);
        sb.insert(4,"-");
        sb.insert(7, "-");
        String newStr = sb.toString();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date =sdf.parse(newStr);
        SimpleDateFormat sdf1 = new SimpleDateFormat("MM/dd");
        String newDate = sdf1.format(date);
        return newDate;
    }
}
