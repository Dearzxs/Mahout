package com.movie.service;

import com.movie.model.movies;

import java.util.*;

public class CountType {
    public Map<String, Integer> Probs = new TreeMap<String, Integer>();
    public Map<String, Integer> CountTy(List<movies> m){
        Probs.put("动画",0);Probs.put("动作",0);Probs.put("科幻",0);Probs.put("奇幻",0);Probs.put("冒险",0);Probs.put("剧情",0);Probs.put("悬疑",0);Probs.put("惊悚",0);Probs.put("犯罪",0);Probs.put("爱情",0);Probs.put("戏剧",0);Probs.put("家庭",0);Probs.put("戏曲",0);Probs.put("音乐",0);Probs.put("战争",0);
        for (int i = 0; i < m.size(); i++) {
            String genrelist=m.get(i).getGenre();
            String[] strArr = genrelist.split("/");
            for (int j = 0; j < strArr.length; ++j){
                if(Probs.containsKey(strArr[j])){
                    int temp=Probs.get(strArr[j]);
                    temp=temp+1;
                    Probs.put(strArr[j],temp);
                }
            }
        }
        Probs = sortByValueDescending(Probs);

        return Probs;
    }

    public <String, Integer extends Comparable<? super Integer>> Map<String, Integer> sortByValueDescending(Map<String, Integer> map)
    {
        List<Map.Entry<String, Integer>> list = new LinkedList<Map.Entry<String, Integer>>(map.entrySet());
        Collections.sort(list, new Comparator<Map.Entry<String, Integer>>()
        {
            @Override
            public int compare(Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2)
            {
                int compare = (o1.getValue()).compareTo(o2.getValue());
                return -compare;
            }
        });
        Map<String, Integer> result = new LinkedHashMap<String, Integer>();
        for (Map.Entry<String, Integer> entry : list) {
            result.put(entry.getKey(), entry.getValue());
        }
        return result;
    }
}
