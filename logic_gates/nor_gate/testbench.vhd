-- Testbench for NOR gate

-- Import std_logic from IEEE library
library IEEE;
use IEEE.std_logic_1164.all;

-- ENTITY DECLARATION: no inputs, no outputs
entity testbench is
  -- empty
  end testbench; 

-- FUNCTIONAL DESCRIPTION: how to test the logic block
architecture behav of testbench is
  -- Pass nor_gate entity to testbench as component
  component nor_gate is
    port (
    a: in   std_logic;
    b: in   std_logic;
    q: out  std_logic
  );
  end component;

  signal a_in, b_in, q_out: std_logic;

begin
  -- Map testbench signals to ports of nor_gate
  nor_gate_instance: nor_gate port map(a_in, b_in, q_out);

  process
    -- Error count variable
    variable error_count: integer := 0;

  begin
    a_in <= '0';
    b_in <= '0';
    wait for 10 ns;
    assert(q_out = '1') report "Fail 0/0" severity error;
    if (q_out /= '1') then
      error_count := error_count + 1;
    end if;

    a_in <= '0';
    b_in <= '1';
    wait for 10 ns;
    assert(q_out = '0') report "Fail 0/1" severity error;
    if (q_out /= '0') then
      error_count := error_count + 1;
    end if;

    a_in <= '1';
    b_in <= '0';
    wait for 10 ns;
    assert(q_out = '0') report "Fail 1/0" severity error;
    if (q_out /= '0') then
      error_count := error_count + 1;
    end if;

    a_in <= '1';
    b_in <= '1';
    wait for 10 ns;
    assert(q_out = '0') report "Fail 1/1" severity error;
    if (q_out /= '0') then
      error_count := error_count + 1;
    end if;

    -- Clear inputs
    a_in <= '0';
    b_in <= '0';

    assert false report "Test done." severity note;
    if (error_count = 0) then
     assert false report "Pass" severity note;
    else
     assert true report "Fail" severity error;
    end if;
    wait;
  end process;
end behav;
