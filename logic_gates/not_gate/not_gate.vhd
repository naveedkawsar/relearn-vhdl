-- Simple NOT gate design

-- Import std_logic from IEEE library
library ieee;
use ieee.std_logic_1164.all;

-- ENTITY DECLARATION: name, inputs, outputs
entity not_gate is
  port (
  x: in   std_logic;
  y: out  std_logic
);
end not_gate;

-- FUNCTIONAL DESCRIPTION: how the logic block works
architecture rtl of not_gate is
begin
  process(x) is
  begin
    -- y <= not x;
    -- Truth table
    if (x = '0') then
      y <= '1';
    else
      y <= '0';
    end if;
  end process;
end rtl;
