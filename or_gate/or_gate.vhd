-- Simple OR gate design

-- Import std_logic from IEEE library
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY DECLARATION: name, inputs, outputs
entity or_gate is
  port (
  a: in   std_logic;
  b: in   std_logic;
  q: out  std_logic
);
end or_gate;

-- FUNCTIONAL DESCRIPTION: how the logic block works
architecture rtl of or_gate is
begin
  process(a,b) is
  begin
    -- q <= a or b;
    -- Truth table
    if ((a='0') and (b='0')) then
      q <= '0';
    else
      q <= '1';
    end if;
  end process;
end rtl;
