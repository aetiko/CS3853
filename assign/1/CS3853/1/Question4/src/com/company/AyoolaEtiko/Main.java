package com.company.AyoolaEtiko;

public class Main {

    public static void main(String[] args) {
        firstLoop();
        secondLoop();
    }
    public static long firstLoop(){
        long mipsStart = 0L;
        long mipsEnd = 0L;
        long sum = 0;

        mipsStart = System.currentTimeMillis();

        for(int i=0; i<10; i++){
            sum = i + sum;
        }
        System.out.println("Sum: " + sum);
        mipsEnd = System.currentTimeMillis();
        System.out.println("Mips: " + (mipsEnd - mipsStart));
        return (mipsEnd - mipsStart);
    }

    public static long secondLoop(){
        long mflopsStart = 0L;
        long mflopsEnd = 0L;
        long sum = 0;
        long mult = 0;

        mflopsStart = System.currentTimeMillis();

        for(int i=0; i<10; i++){
                sum = i+sum;
                mult += (mult+1)*(i+1);
        }
        System.out.println("Sum: " + sum);
        System.out.println("Mult: " + mult);
        mflopsEnd = System.currentTimeMillis();
        System.out.println("Mflops: " + (mflopsEnd - mflopsStart));
        return (mflopsEnd - mflopsStart);
    }

}
