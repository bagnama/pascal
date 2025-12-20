program realtobin;

var // var global section
   real_number : real;
   counter     : integer;

begin
   // This program convert a real number between 0 and 1 to a binary number using fixed point representation
   writeln('Insert a real number between 0 and 1:');
   readln(real_number);
   
   while((real_number<0) or (real_number>=1))do
   begin // This cycle control that the input is correct
      writeln('Number not valid.');
      writeln('Reinsert a number between 0 and 1:');
      readln(real_number);
   end;

   counter := 8; // counter is the number of digit we want to compute in binary
   while(counter > 0) do
   begin
      real_number := real_number*2;

      if (real_number >= 1) then
      begin
	 write(1);
         real_number := real_number-1;
      end
      else
      begin
         write(0);
      end;

      counter := counter-1;
   end;
   
   writeln(); // Write the result in the terminal
   writeln('Press a key to continue.');
   readln;

end.
