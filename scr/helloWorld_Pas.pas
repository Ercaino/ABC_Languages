program HelloWorld;

begin
  writeln('Hello, World!');
end.

{ 
  fpc hello.pas 
  ./hello   { on Linux/macOS }
  hello.exe { on Windows }
}

{ Simple demo }
program SimpleCalculator;

var
  a, b, sum: Integer;

begin
  writeln('Enter two numbers:');
  readln(a);
  readln(b);

  sum := a + b;

  writeln('The sum is: ', sum);
  readln; { Wait for Enter before closing }
end.