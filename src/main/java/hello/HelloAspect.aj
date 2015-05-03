package hello;

/**
 * Created by Chris on 4/30/2015.
 */
public aspect HelloAspect {

    public pointcut hello() : call(void hello.Hello.sayHello());

    before(): hello(){
        System.out.println("Introducing Hello...\n");
    }

    after(): hello(){
        System.out.println("Hello leaves the stage...\n");
    }
}
