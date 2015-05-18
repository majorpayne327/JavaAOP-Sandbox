package flow;

/**
 * Created by Chris on 5/3/2015.
 */
public aspect FlowAspect {

    int methodCount = 0;

    public pointcut flow() : cflow(call( * FlowA.methodA() ) ) && !within(FlowAspect);
    public pointcut method() : call(* Flow*.method*());


    before() : flow() {
        //System.out.println( thisJoinPoint );
    }

    before() : method(){
        methodCount++;
    }

    after() returning: call(void FlowC.methodC()){
        System.out.println(methodCount);
    }
}
