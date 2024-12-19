       01  Input-String      PIC X(100).
       01  Padded-String     PIC X(100).
       01  Pad-Character     PIC X.
       01  Pad-Length        PIC 9(3).
       01  Input-Length      PIC 9(3).
       01  Pad-Count         PIC 9(3).
       01  Index             PIC 9(3).

       PROCEDURE DIVISION USING Input-String, Pad-Length, Pad-Character, Padded-String.
           MOVE FUNCTION LENGTH(Trim(Input-String)) TO Input-Length
           COMPUTE Pad-Count = Pad-Length - Input-Length
           MOVE SPACES TO Padded-String
           PERFORM VARYING Index FROM 1 BY 1 UNTIL Index > Pad-Count
               MOVE Pad-Character TO Padded-String(Index:1)
           END-PERFORM
           STRING Input-String DELIMITED BY SIZE INTO Padded-String WITH POINTER Index
           GOBACK.
