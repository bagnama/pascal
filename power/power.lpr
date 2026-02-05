program power;

var // var global section
   exponent : integer; // exponent of the power
   base	    : integer; // base of the power
   
function power(base, exponent : integer) : integer;
// INPTU : (1) base -> base of the exponentiation performed by the power function
//         (2) exponent -> exponent of the exponentiation performed by the power function
// OUTPUT : (1) power -> result of the exponentiation base^exponent

// var local section in power
var
   mult	: integer; // variable we use to multiply by itself the base
   step	: integer; // vairable we use to count the number of steps we multiply mult by the base

begin // begin of the function body
   mult := 1; // Initilize mult to 1
   step := exponent; // Initialize step to exponent, we want to multiply mult by the base exponent times

   while(step>0) do // cycle until step is zero
   begin // begin of the while body
      mult := mult*base; // multimpy mult by the base
      step := step-1; // decrease the step by 1
   end; // end of the while body
   
   power := mult; // Load the result in the function name
end; // end of the functin body

begin // begin of the program body
   writeln('Insert the base:'); // Ask to enter the base of the exponentiation
   readln(base); // Read the number inserted and save it in the base variable
   writeln('Insert the exponent:'); // Ask to enter the exponent of the exponentiation
   readln(exponent); // Read the number inserted and save it in the exponent variable
   result := power(base, exponent); // Compute the power using POT2I and store the returned value in the result variable
   writeln('Result=', result); // Print the result
   readln; // Attend the user to press something in the keyboard to close the program
end. // end of the program body


