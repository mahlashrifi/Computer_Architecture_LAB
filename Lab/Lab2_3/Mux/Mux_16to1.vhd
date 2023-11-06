----------------------------------------------------------------------------------
-- Module Name:    Mux_16to4 - Behavioral 
-- Project Name: Lab2

-- Description: 
-- This is the code of implementing a 16-to-1 multiplexer by using 5 4-to-1 multiplexers.
-- Inputs and output of this 16-to-1 multiplexer are single-bit 

----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Mux_16to1 is
    Port ( i_top : in  STD_LOGIC_VECTOR (15 downto 0);
           sel_top : in  STD_LOGIC_VECTOR (3 downto 0);
           output_top : out  STD_LOGIC);
end Mux_16to1;

architecture Behavioral of Mux_16to1 is

	COMPONENT Mux2_4to1
	PORT(
		i : IN std_logic_vector(3 downto 0);
		sel : IN std_logic_vector(1 downto 0);          
		output : OUT std_logic
		);
	END COMPONENT;

   Signal internal : std_logic_vector(3 downto 0);
begin
	
	Inst1_Mux2_4to1: Mux2_4to1 PORT MAP(
		i => i_top (3 downto 0),
		sel => sel_top (1 downto 0) ,
		output => internal(0) 
	);


	Inst2_Mux2_4to1: Mux2_4to1 PORT MAP(
		i => i_top (7 downto 4),
		sel => sel_top (1 downto 0) ,
		output => internal(1) 
	);
	
	
	Inst3_Mux2_4to1: Mux2_4to1 PORT MAP(
		i => i_top (11 downto 8),
		sel => sel_top (1 downto 0) ,
		output => internal(2) 
	);
	
	
	Inst4_Mux2_4to1: Mux2_4to1 PORT MAP(
		i => i_top (15 downto 12),
		sel => sel_top (1 downto 0) ,
		output => internal(3) 
	);
	
	Inst5_Mux2_4to1: Mux2_4to1 PORT MAP(
		i => internal ,
		sel => sel_top (3 downto 2) ,
		output =>output_top
	);
	
end Behavioral;

