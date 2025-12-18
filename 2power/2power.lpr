program project1;

// Define the function POW2I taking an integer as input and giving an integer as output
function POW2I(N : integer) : integer;
// INPUT: (1I) N -> integer that represent the power of 2
// OUTPU: (1O) POW2I -> the N-th power of 2

// var local section in POW2I
var
   mult : integer; // mult -> integer we multiply by 2 in every cycle 

begin // begin of the function body
   mult = 1;  // Initialize mult to 1

   // while cycle : at every step we multiply mult by 2 until N is zero
   while N>0 do
   begin
      mult := mult*2; // Multiply mult by 2
      N := N-1; // decrease N by 1
   end;
   POT2I := mult; // Load the result in the function name
end;

// var global section
var
   power  : integer; // Number asked to the user
   result : integer; // Result of the function

begin // begin of the program body
   writeln('Insert a number:'); // Ask the user to insert a number (this number is the power of 2)
   readln(power); // Read the number inserted and save it in the power variable
   result := POT2I(power); // Compute the power using POT2I and store the returned value in the result variable
   writeln('Result=', result); // Print the result
   readln; // Attend the user to press something in the keyboard to close the program
end. // end of the program body

