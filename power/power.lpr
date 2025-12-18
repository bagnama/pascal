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
   base := 2; // set a base for the exponentiation
   
   for exponent := 0 to 10 do // cycle for exponent from 0 to 10
   begin // begin of the for body
      writeln(base, '^', exponent, ' = ', power(base, exponent)); // Print the result base^exponent
   end;// end of the for body
   
   readln(); // wait for the user to press a key
end. // end of the program body

