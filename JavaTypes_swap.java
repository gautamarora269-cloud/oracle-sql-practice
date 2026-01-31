public class JavaTypes_swap {
    public static void main(String[] args) {

        //Write a program to swap two numbers (using third variable).

        int a = 12;
        int b = 14;

        System.out.println("a = " + a);
        System.out.println("b = " + b);

        int temp = a;
        a = b;
        b = temp;

        System.out.println("a = " + a);
        System.out.println("b = " + b);
    }

}
