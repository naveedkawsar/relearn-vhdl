-- Simple XOR gate design

-- Import std_logic from IEEE library
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY DECLARATION: name, inputs, outputs
entity xor_gate is
  port (
  a: in   std_logic;
  b: in   std_logic;
  q: out  std_logic
);
end xor_gate;

-- FUNCTIONAL DESCRIPTION: how the logic block works
architecture rtl of xor_gate is
begin
  process(a,b) is
  begin
    -- q <= a xor b;
    -- Truth table
    if (((a='0') and (b='1')) or ((a='1') and (b='0'))) then
      q <= '1';
    else
      q <= '0';
    end if;
  end process;
end rtl;
