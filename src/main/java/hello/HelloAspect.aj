package hello;

/**
 * Created by Chris on 4/30/2015.
 */
public aspect HelloAspect {

    pointcut hello() : call(void hello.Hello.sayHello());

    before(): hello(){
        System.out.println("Introducing Hello...\n\n");
    }

    after(): hello(){
        System.out.println("Hello leaves the stage...");
    }
}
