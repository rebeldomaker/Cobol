       IDENTIFICATION DIVISION.
       PROGRAM-ID. PayrollCalculator.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01 Employee-Details.
           05 Employee-Name        PIC A(20).
           05 Hours-Worked         PIC 9(2).
           05 Hourly-Rate          PIC 9(2)V99.
           05 Gross-Pay            PIC 9(5)V99 VALUE ZEROS.
           05 Tax-Rate             PIC V99 VALUE 0.15.
           05 Tax-Deducted         PIC 9(4)V99 VALUE ZEROS.
           05 Net-Pay              PIC 9(5)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "Enter Employee Name: " WITH NO ADVANCING.
           ACCEPT Employee-Name.
           DISPLAY "Enter Hours Worked: " WITH NO ADVANCING.
           ACCEPT Hours-Worked.
           DISPLAY "Enter Hourly Rate: " WITH NO ADVANCING.
           ACCEPT Hourly-Rate.

           COMPUTE Gross-Pay = Hours-Worked * Hourly-Rate.
           COMPUTE Tax-Deducted = Gross-Pay * Tax-Rate.
           COMPUTE Net-Pay = Gross-Pay - Tax-Deducted.

           DISPLAY "Employee Name: ", Employee-Name.
           DISPLAY "Gross Pay: $", Gross-Pay.
           DISPLAY "Tax Deducted: $", Tax-Deducted.
           DISPLAY "Net Pay: $", Net-Pay.

           STOP RUN.
