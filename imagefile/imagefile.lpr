program imagefile;

type // type ambient to define new types
  fob = file of byte; // define the type "file of byte"

var
  bmpfile : fob; // File of type file fo byte
  x : byte; // Variable of type byte

begin
   assign(bmpfile, 'image.bmp'); // Assign the logic file to actual file
   reset(bmpfile); // Open the file without creating a new one

   // Go to the position 10 in the file
   seek(bmpfile, 10);
   read(bmpfile, x); // Read the actual position of the cursor
   seek(bmpfile, x); // Put the cursor in the position x of the file

   // Modify the image
   while NOT EOF(bmpfile) do
   begin
      // Change the color of all the byte to green
      write(bmpfile, 0); 
      write(bmpfile, 255);
      write(bmpfile, 0);
   end;
end.

