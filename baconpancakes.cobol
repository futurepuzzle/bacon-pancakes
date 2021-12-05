       IDENTIFICATION DIVISION.
       PROGRAM-ID. BACONPANCAKES.
       AUTHOR. SPEAKER.
      *HOW MANY BACON PANCAKES CAN YOU MAKE?
       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
      *NAME PIC A(20).
       WORKING-STORAGE SECTION.
       01 NAME PIC A(20).
       01 FLOUR PIC 999.
       01 SUGAR PIC 999.
       01 MILK PIC 999.
       01 BACON PIC 999.
       01 BAKEPOWDER PIC 999.
       01 PANCAKES PIC 99V99.

       PROCEDURE DIVISION.
           0100-START-HERE. 
               DISPLAY "What is your name?".
               ACCEPT NAME.
               DISPLAY "Hello ", NAME.
               DISPLAY "how many cups of flour do you have?".
               ACCEPT FLOUR.
               IF FLOUR < 2
                   DISPLAY "awww, no pancakes"
                       PERFORM 0100-START-HERE 
                           UNTIL FLOUR > 2
               ELSE
                   DISPLAY "You have ", FLOUR
                   DISPLAY "cups of flour"
               END-IF.
               DISPLAY "how many cups of sugar do you have?".
               ACCEPT SUGAR.
               IF SUGAR < 1
                   DISPLAY "Oh noooo! No pancakes!"
                       PERFORM 0100-START-HERE 
                           UNTIL SUGAR > 1
               ELSE
                   DISPLAY "You have: ", SUGAR
                   DISPLAY "cups of sugar."
               END-IF.
               DISPLAY "Now, how many mils of milk do you have?".
               ACCEPT MILK.
               IF MILK < 100
                   DISPLAY "GET MORE MILK!"
                       PERFORM 0100-START-HERE
                           UNTIL MILK > 100
               ELSE
                   DISPLAY "okay, ", MILK
                   DISPLAY "ml of milk."
               END-IF.
               DISPLAY "How many pieces of bacon?".
               ACCEPT BACON.
               IF BACON < 1
                   DISPLAY "and how did you think you'd make bacon"
                   DISPLAY " pancakes without bacon...get bacon."
                       PERFORM 0100-START-HERE
                           UNTIL BACON > 1
               ELSE
                   DISPLAY "NICE! ", BACON
                   DISPLAY " pieces of bacon, break into small chunks."
               END-IF.
               DISPLAY "How many spoons of baking powder?".
               ACCEPT BAKEPOWDER.
               IF BAKEPOWDER < 2
                   DISPLAY "Fluff-less pancakes?? No!"
                       PERFORM 0100-START-HERE
                           UNTIL BAKEPOWDER > 2
               ELSE
                   DISPLAY "NICE!", 
      *     BAKING.
               DISPLAY "Now, let's see how many pancakes you can make".
           COMPUTE PANCAKES = ((FLOUR / 4) + (SUGAR / 4)) * BAKEPOWDER
               DISPLAY "Alright!", PANCAKES.
               DISPLAY "pancakes!!!".
       END PROGRAM BACONPANCAKES.