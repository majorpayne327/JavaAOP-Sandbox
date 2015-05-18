package wut;

import java.util.ArrayList;

/**
 * Created by djdisd on 5/15/15.
 */
public class Logic {

    public ArrayList<Integer> nums = new ArrayList();
    public final int START_POINT = 1000;
    public int task;

    public Logic(int task){
        this.task = task;
    }

    //Start task 1
    public void getMultiples(){
        for (int i = 0; i < START_POINT; i++) {
            if(i % 3 == 0 || i % 5 == 0){
                nums.add(i);
            }
        }
    }

    public int getSum(){
        int sum = 0;

        for (int i = 0; i < getNums().size(); i++) {
            sum += getNums().get(i);
        }

        return sum;
    }
    //End task 1

    //Start task 2
    public final int END_POINT = 10;
    public ArrayList<Integer> fibNums = new ArrayList();

    public int fib(int n){
        if(n < 2){
            return n;
        }else{
            return fib(n - 1) + fib(n - 2);
        }
    }

    public void addToFibNums(int n){
        fibNums.add(n);
    }

    public int getFibSum(){
        int sum = 0;

        for (int i = 0; i < fibNums.size(); i++) {
            if(fibNums.get(i) % 2 == 0){
                sum += fibNums.get(i);
            }
        }

        return sum;
    }
    //End task 2

    public ArrayList<Integer> getNums(){
        return nums;
    }

    public int getTask() {return task;}

    public int getEND_POINT() {return END_POINT;}

    public ArrayList<Integer> getFibNums() {return fibNums;}
}
