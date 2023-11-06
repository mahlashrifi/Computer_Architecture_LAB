----------------------------------------------------------------------------------
-- Module Name:    Mux1_4to1 - Behavioral 
-- Project Name: Lab2

-- Description: 
-- This is source code of Multiplexer 4 to 1 that its inputs are single-bit
-- The code is implemented using Conditional references

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Mux1_4to1 is
    Port ( i : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC);
end Mux1_4to1;

architecture Behavioral of Mux1_4to1 is

begin

	output <= i(0) when t="00" else
				 i(1) when t="01" else
				 i(2) when t="10" else
				 i(3) ;


end Behavioral;



