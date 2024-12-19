# cobol-leftpad
LeftPad for your COBOL applications

## Using LeftPad as a Library in COBOL Applications

To use the LeftPad implementation in your COBOL application, follow these steps:

1. Copy the `leftpad.cbl` and `leftpad.cpy` files into your project directory.
2. In your COBOL program, include the `leftpad.cpy` copybook where you want to use the LeftPad function.

Example:
```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Example.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY 'leftpad.cpy'.
       01  Result-String  PIC X(20).

       PROCEDURE DIVISION.
           CALL 'LeftPad' USING 'Hello', 20, ' ', Result-String
           DISPLAY Result-String
           STOP RUN.
```

## Compiling and Running the Example Program

To compile and run the example program, follow these steps:

1. Ensure you have a COBOL compiler installed on your system.
2. Open a terminal and navigate to the directory containing the `example.cbl`, `leftpad.cbl`, and `leftpad.cpy` files.
3. Compile the `leftpad.cbl` file:
   ```sh
   cobc -c leftpad.cbl
   ```
4. Compile the `example.cbl` file and link it with the `leftpad` object file:
   ```sh
   cobc -x example.cbl leftpad.o -o example
   ```
5. Run the compiled program:
   ```sh
   ./example
   ```
