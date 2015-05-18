package wut;

/**
 * Created by djdisd on 5/15/15.
 */
public aspect LogicAspect {

    pointcut constructor(Logic l) : initialization(Logic.new(..)) && target(l);
    pointcut multiples(Logic l) : call(* Logic.getMultiples()) && target(l);

    after(Logic l) : constructor(l){
       if(l.getTask() == 1) {
           System.out.println("task 1");
           l.getMultiples();
       } else if(l.getTask() == 2){
           System.out.println("task 2");
           l.addToFibNums(l.fib(l.END_POINT));
           System.out.println(l.getFibNums());
           System.out.println(l.getFibSum());
       }
    }

    after(Logic l) : multiples(l){
        System.out.println(l.getSum());
    }
}
