package com.company;

public class Main {

    public static void main(String[] args) {
	String name="Ibrahim";
        String lastName="khan";
        String  result;
    System.out.print(name.length());

    result=name+ lastName;
        System.out.print(result.toLowerCase());
       // System.out.print(name.split("_"));

        System.out.print(name.replaceAll(name,"ooooo"));
        System.out.print(name.contains("i"));
    }
}
