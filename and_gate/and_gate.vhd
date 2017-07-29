-- Simple AND gate design

-- Import std_logic from IEEE library
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY DECLARATION: name, inputs, outputs
entity and_gate is
  port (
  a: in   std_logic;
  b: in   std_logic;
  q: out  std_logic
);
end and_gate;

-- FUNCTIONAL DESCRIPTION: how the logic block works
architecture rtl of and_gate is
begin
  process(a,b) is
  begin
    -- q <= a and b;
    -- Truth table
    if ((a='1') and (b='1')) then
      q <= '1';
    else
      q <= '0';
    end if;
  end process;
end rtl;
