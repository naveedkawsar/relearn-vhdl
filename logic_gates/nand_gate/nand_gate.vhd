-- Simple NAND gate design

-- Import std_logic from IEEE library
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY DECLARATION: name, inputs, outputs
entity nand_gate is
  port (
  a: in   std_logic;
  b: in   std_logic;
  q: out  std_logic
);
end nand_gate;

-- FUNCTIONAL DESCRIPTION: how the logic block works
architecture rtl of nand_gate is
begin
  process(a,b) is
  begin
    -- q <= a nand b;
    -- Truth table
    if ((a='1') and (b='1')) then
      q <= '0';
    else
      q <= '1';
    end if;
  end process;
end rtl;
