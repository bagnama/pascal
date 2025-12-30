program writeonfile;

var // define the variables
   textfile : text;
   line     : string;
   counter  : integer;

begin
   Assign(textfile, 'text.txt'); // Assign the logic file to the real file
   Rewrite(textfile); // Open an empty file and create one if it does not exists

   for counter := 0 to 2 do
   begin
      readln(line); // read the line in input
      writeln(textfile, line); // Write the read line in the file
   end;
   
   close(textfile); // Close the file
end.

