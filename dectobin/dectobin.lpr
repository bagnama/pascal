program dectobin;

var // Global variable definition
  counter, number, remainder : integer;
  bin : array[0..7] of integer; // This array will contains the binary digits

begin // begin of the program body
  // Ask to insert an integer
  writeln('Insert a number between 0 and 255:');
  readln(number);
  counter := 0; // Initialize the counter to zero
   
  while(number < 0) or (number > 255)do // Control that the number is between 0 and 255
  begin
     writeln('Number not accepted.');
     writeln('Reinsert a valid numeber:');
     readln(number);
  end;

  while(number <> 0)do // cycle until number is zero
  begin
     remainder := number mod 2; // Compute the remainder dividing by 2
     number := number div 2; // The new number is the preceding number divided by 2
     bin[counter] := resto; // Insert the remainder in the vector
     counter := counter+1; // Increment the counter by 1
  end;

  // Print the result
  while(counter > 0)do
  begin	
     coutner := counter-1;
     write(bin[counter]);
  end; // end of the while body
   
  writeln;
  writeln('Press a key to exit.');
  readln;
end. // end of the program body
