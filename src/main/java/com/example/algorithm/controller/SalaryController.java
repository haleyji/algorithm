package com.example.algorithm.controller;

import java.util.Arrays;
import java.util.List;

public class SalaryController {
    public static void main(String[] args) {//100,100,100,100,100,100
        List<String> deposits = Arrays.asList("deposit 100","salary 100", "ddsalaeb 100", "slary 100","alabsalarry 100",
                "slary 100","fdbsaladbdsalay 100","salasaabbey 100", "salady 100","alarrrsly 100", "salarry 100");

        System.out.println(findTotalSalary(deposits));
    }
    public static int findTotalSalary(List<String> list) {
        int totalSalary = 0;
        for (String s : list) {
            String[] words = s.split(" ");
            for (String word : words) {
                if (isSalaryWord(word)) {
                    try {
                        totalSalary += Integer.parseInt(words[words.length - 1]);
                    } catch (NumberFormatException e) {
                        // do nothing if the last word is not a number
                    }
                    break;
                }
            }
        }
        return totalSalary;
    }

    private static boolean isSalaryWord(String word) {
        String salary = "salary";
        if (word.length() < salary.length() - 1) {
            return false;
        }
        for (int i = 0; i < salary.length(); i++) {
            int index = word.indexOf(salary.charAt(i));
            if (index < 0) {
                return false;
            }
            word = word.substring(index + 1);
        }
        return true;
    }

}
