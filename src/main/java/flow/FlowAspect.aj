package flow;

/**
 * Created by Chris on 5/3/2015.
 */
public aspect FlowAspect {

    public pointcut flow() : cflow(call( * FlowA.methodA() ) ) && !within(FlowAspect);

    before() : flow() {
        System.out.println( thisJoinPoint );
    }
}
