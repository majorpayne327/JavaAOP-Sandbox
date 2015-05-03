package hello;

/**
 * Created by Chris on 4/26/2015.
 */
public class Hello {

    public static void sayHello(){
        System.out.println("Hello World!\n");
        sayGoodBye();
    }

    public static void sayGoodBye(){
        System.out.println("Goodbye World!\n");
    }

    public static void main(String[] args){
        System.out.println("Executing\n");
        sayHello();
        System.out.println("Finished Executing\n");
    }
}
