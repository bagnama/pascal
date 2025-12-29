program filetochar;

var
  source         : text; // text file type
  destination1   : file of char; // file of char type
  destination2   : file of char;
  character      : char;
  countv, countc : integer;

begin
   countv := 0;
   countc := 0;
   assign(source, 'source.txt'); // assign a name to the "streams" from the files.
   assign(destination1, 'destination1.out');
   assign(destination2, 'destination2.out');

   // reset(file) : it reset the pointer to the start of the file
   // rewrite(file) : it rewrites the file with a new one / it creates a file if it does not exists
   reset(source);
   rewrite(destination1);
   rewrite(destination2);

   while not EOF(source) do // EOF(source) returns true if the cursor is at the end of the text file assingned to source
   begin
      read(source, character); // read(file, var) read the first character in the file and stores it in the variable var
      write(destination1, character); // write(file, var) writes the character in the variable var in the file
      if character in ['A'..'Z','a'..'z','0'..'9'] then // Control if the content of the variable character is a letter or a number
	 write(destination2, character); // If character is a letter or a number we write it in the file assingned to destination2
   end;


   while not EOF(destination2) do
   begin
      read(destination2, character);
      if character in ['a','e','i','o','u'] then // Controls if the character read from the file destination2 is a vowels
	 countv := countv+1 // Increase the count of the vowels by 1
      else
	 countc := countc+1; // Increase the count of the consonant by 1
   end;

   writeln('The number of consonant is:');
   write(countc);
   // We close the stream from the files
   close(source);
   close(destination1);
   close(destination2);
end.

