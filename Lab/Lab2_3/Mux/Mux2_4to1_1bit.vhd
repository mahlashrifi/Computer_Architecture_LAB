----------------------------------------------------------------------------------
-- Module Name:    Mux1_4to1_1bit - Behavioral 
-- Project Name: Lab2

-- Comments: This is source code of Multiplexer 4 to 1 that its inputs are single-bit
-- The code is implemented using optional references

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Mux2_4to1_1bit is
    Port ( i : in  STD_LOGIC_Vector (3 downto 0);
           sel : in  STD_LOGIC_Vector (1 downto 0);
           output : out  STD_LOGIC);
end Mux2_4to1_1bit;

architecture Behavioral of Mux2_4to1_1bit is

begin

	with sel select
	output<= i(0) when "00",
		 i(1) when "01",
		 i(2) when "10",
		 i(3) when others;
	
end Behavioral;

