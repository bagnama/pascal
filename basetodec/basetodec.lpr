program basetodec;

function power(base, exponent : integer) : integer;
// ----------------------------------------
// Function that computer the power base^exponent

var // local variable definition
   result : integer; // this variable will contain the final result
   step   : integer; // this variable counts the number of remainig steps
   
begin
  result := 1;
  step := exponent;
  while(step > 0) do
  begin
     result := result*base; // the multiply base by itself for number of exponent times
     step := step-1; // decrease the number of step by 1
  end;
  power := result; // Load the result in the function name
end; // end of the function body

var // global variable definition
   counter  : integer; // Counter for the cycle
   base     : integer; // base of the exponentiation
   number   : integer; // This will contain the converted number
   exponent : integer; // exponent of the exponentiation  
   digits   : array [0..7] of integer; // Vector of the startin number digits

begin
   counter := 0; // Initialize counter to zero
   writeln('Insert the basis of the starting number:');
   readln(base);

   writeln('Insert the number digits by digits starting on the left:');  // Ask to insert the number to convert digits by digits
   while (counter < 8) do
   begin
      readln(digits[counter]); // Insert the digits in the vector
      counter := counter+1; // Increase the counter by 1
   end;

   counter := 7; // Initalize the counter to 7, the maximum number of digits
   number := 0;
   exponent := 0;

   while (counter >= 0) do
   begin
      number := number + digits[counter]*power(base, exponent); // Compute the decimal number
      counter := counter-1;
      exponent := exponent+1;
   end;
   
   writeln('The decimal number is:');
   writeln(number);
   writeln('Press a key to exit.');
   readln;
end.


