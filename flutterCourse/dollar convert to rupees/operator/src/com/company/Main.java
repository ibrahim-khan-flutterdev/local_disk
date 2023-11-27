package com.company;

public class Main {

    public static void main(String[] args) {
	int x =30;
        int y =30;
        boolean result;
//        result=(x<y &&y<x);

       // result=(x<y &&y>x);
       // result=(x>y ||y<x);
        result=!(x==y);
        System.out.println(result);


    }
}
