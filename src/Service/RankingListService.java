package Service;

import Dao.ThemesDao;

import java.sql.SQLException;
import java.util.*;

public class RankingListService {
   //排行榜key-velue
    public Map<String,Long> sortThemes() throws SQLException {
        ThemesDao dao = new ThemesDao();
        Map<String,Long> themeMap = new TreeMap<>();
        themeMap.put("喝咖啡",dao.countCoffee());
        themeMap.put("吃饭",dao.countFood());
        themeMap.put("看电影",dao.countMovie());
        themeMap.put("唱歌",dao.countSing());
        themeMap.put("旅行",dao.countTrip());
        themeMap.put("购物",dao.countShopping());
        themeMap.put("运动",dao.countSports());



        //对于velue排序
        themeMap = sortByValueDescending(themeMap);
        return themeMap;
    }
    //降序排序
    public static <K, V extends Comparable<? super V>> Map<K, V> sortByValueDescending(Map<K, V> map)
    {
        List<Map.Entry<K, V>> list = new LinkedList<>(map.entrySet());
        Collections.sort(list, (o1, o2) -> {
            int compare = (o1.getValue()).compareTo(o2.getValue());
            return -compare;
        });

        Map<K, V> result = new LinkedHashMap<K, V>();
        for (Map.Entry<K, V> entry : list) {
            result.put(entry.getKey(), entry.getValue());
        }
        return result;
    }

}
