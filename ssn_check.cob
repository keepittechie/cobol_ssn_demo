*> COBOL program to simulate SSN record checking
*> Created by Josh from KeepItTechie
*> This program scans mock records and flags people who appear to be over 150 years old but are still marked alive.

IDENTIFICATION DIVISION.
PROGRAM-ID. SSN-CHECK.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT SSN-FILE ASSIGN TO 'people.dat'
    ORGANIZATION IS LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SSN-FILE.
01 SSN-RECORD.
   05 SSN         PIC X(9).
   05 COMMA1      PIC X.
   05 NAME        PIC X(20).
   05 COMMA2      PIC X.
   05 DOB         PIC X(10).
   05 COMMA3      PIC X.
   05 DOD         PIC X(10).

WORKING-STORAGE SECTION.
01 WS-END-FILE        PIC X VALUE 'N'.
01 WS-YEAR            PIC 9(4).
01 WS-CURRENT-YEAR    PIC 9(4) VALUE 2025.
01 WS-AGE             PIC 9(3).

PROCEDURE DIVISION.
BEGIN.
    OPEN INPUT SSN-FILE
    PERFORM UNTIL WS-END-FILE = 'Y'
        READ SSN-FILE
            AT END
                MOVE 'Y' TO WS-END-FILE
            NOT AT END
                PERFORM PROCESS-RECORD
        END-READ
    END-PERFORM
    CLOSE SSN-FILE
    STOP RUN.

PROCESS-RECORD.
    MOVE FUNCTION NUMVAL (DOB(1:4)) TO WS-YEAR
    COMPUTE WS-AGE = WS-CURRENT-YEAR - WS-YEAR

    IF DOD = SPACES
        IF WS-AGE > 150
            DISPLAY "WARNING: " NAME " (SSN " SSN ") appears to be " WS-AGE " years old and still alive."
        END-IF
    END-IF.
