package main;

public class Calculator {
    public int add(int a, int b) {
        return a + b;
    }

    public int subtract(int a, int b) {
        return a - b;
    }

    public int multiply(int a, int b) {
        return a * b;
    }

    public int integerDivide(int a, int b) {
        if (b == 0) {
            throw new IllegalArgumentException("Divisor can not be 0");
        }
        return a / b;
    }
}
