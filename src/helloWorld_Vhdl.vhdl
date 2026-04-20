-- Hello World in VHDL
--
-- Requirements:
-- - GHDL (VHDL simulator)
--
-- Execution:
-- - Analysis: ghdl -a helloWorld_Vhdl.vhdl
-- - Elaboration: ghdl -e hello_world
-- - Run: ghdl -r hello_world

use std.textio.all;

entity hello_world is
end entity hello_world;

architecture behavior of hello_world is
begin
    process
        variable l : line;
    begin
        write(l, String'("Hello, World!"));
        writeline(output, l);
        wait;
    end process;
end architecture behavior;
