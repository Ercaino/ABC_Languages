/*
 * Hello World in Verilog
 * 
 * Requirements:
 * - Icarus Verilog (iverilog)
 * - GTKWave (optional, for viewing waveforms)
 * 
 * Execution:
 * - Compile: iverilog -o hello helloWorld_Verilog.v
 * - Run: vvp hello
 */

module hello_world;
  initial begin
    $display("Hello, World!");
    $finish;
  end
endmodule
