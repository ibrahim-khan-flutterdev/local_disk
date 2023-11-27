package com.company;

public class Main {

    public static void main(String[] args) {
	int X ;
    int y;
    double feet=2000;
    double meter,km;
    meter=feet/3;
    X=10;
    y=20;
    System.out.println("before swiping");
    System.out.println(X);
        System.out.println(y);
        System.out.println("after  swiping");

X=y;
        System.out.println(X);

X=X+y;

        System.out.println(X);
        y=X;
        System.out.println(y);
        y=y+X;
        System.out.println(y);
        meter=feet/3;
        System.out.println(meter);
        km=meter/1000;
        System.out.println(km);


    }
}
