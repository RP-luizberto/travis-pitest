package main;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class CalculatorTest {

    private Calculator calculator;

    @BeforeEach
    void init() {
        calculator = new Calculator();
    }

    @Test
    void addWorks() {
        assertEquals(4, calculator.add(2, 2));
    }

    @Test
    void subtractWorks() {
        assertEquals(0, calculator.subtract(2, 2));
    }

    @Test
    void multiplyWorks() {
        assertEquals(6, calculator.multiply(2, 3));
    }

    @Test
    void integerDivideWorks() {
        assertEquals(2, calculator.integerDivide(8, 3));
    }

}