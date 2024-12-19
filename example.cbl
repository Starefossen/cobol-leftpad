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
