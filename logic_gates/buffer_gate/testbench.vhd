-- Testbench for buffer

-- Import std_logic from IEEE library
library IEEE;
use IEEE.std_logic_1164.all;

-- ENTITY DECLARATION: no inputs, no outputs
entity testbench is
  -- empty
  end testbench; 

-- FUNCTIONAL DESCRIPTION: how to test the logic block
architecture behav of testbench is
  -- Pass not_gate entity to testbench as component
  component buffer_gate is
    port (
    x: in   std_logic;
    y: out  std_logic
  );
  end component;

  signal x_in, y_out:   std_logic;

begin
  -- Map testbench signals to ports of not_gate
  buffer_gate_instance: buffer_gate port map(x_in, y_out);

  process
    -- Error count variable
    variable error_count: integer := 0;

  begin
    x_in <= '0';
    wait for 20 ns;
    assert(y_out = '0') report "Fail 0" severity error;
    if (y_out /= '0') then
      error_count := error_count + 1;
    end if;

    x_in <= '1';
    wait for 20 ns;
    assert(y_out = '1') report "Fail 1" severity error;
    if (y_out /= '1') then
      error_count := error_count + 1;
    end if;

    -- Clear input
    x_in <= '0';

    assert false report "Test done." severity note;
    if (error_count = 0) then
     assert false report "Pass" severity note;
    else
     assert true report "Fail" severity error;
    end if;
    wait;
  end process;
end behav;
