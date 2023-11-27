package com.company;

public class Main {

    public static void main(String[] args) {
//        int entermarks=int.parse(stdin.readlneSync()!);
	int totalMarks=100;
    int marks=9;
    System.out.println(totalMarks);
    if(marks>90){
        System.out.println(" your greate is A+");

    }else if(marks>80 && marks ==90){
            System.out.println(" your greate is B");

        }else if(marks<80 && marks >50){
        System.out.println(" your greate is C");

    }else {
        System.out.println(" you have faile");
    }



    }
}
