package com.hy.utils;

import java.text.SimpleDateFormat;
import java.util.*;

public class Helper {

    public static String getId() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString().replace("-", "");
    }

    public static String getSixChar() {
        return getId().substring(0, 6);
    }

    public static String listToString(List<String> stringList) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < stringList.size() - 1; i++) {
            sb.append(stringList.get(i) + " ");
        }
        sb.append(stringList.get(stringList.size() - 1));
        return sb.toString();
    }

    public static List<String> stringToListSplitBySymbol(String string, String symbol) {
        if (string == null || string.length() == 0) {
            return new ArrayList<>();
        }
        return Arrays.asList(string.split(symbol));
    }

    public static List<String> stringToList(String string) {
        if (string == null || string.length() == 0) {
            return new ArrayList<>();
        }
        return Arrays.asList(string.split(" "));
    }

    public static String dateToString(Date date) {
        if (date == null) {
            return "";
        }
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return formatter.format(date);
    }

    public static void main(String[] args) {

        System.out.println(dateToString(new Date()));

        System.out.println(getId());

//        String s = "yin zi ang";
//        List<String> stringList = stringToList(s);
//        System.out.println("stringList: " + stringList);
//        System.out.println(listToString(stringList));
    }
}
