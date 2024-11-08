package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

public class AppTest {

    @Test
    public void testWelcomeMessage() {
        String expectedMessage = "Welcome to the Java Getting Started App!";
        ByteArrayOutputStream outContent = new ByteArrayOutputStream();
        System.setOut(new PrintStream(outContent));

        App.main(null);

        assertEquals(expectedMessage + System.lineSeparator(), outContent.toString());
    }
}
