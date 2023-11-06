----------------------------------------------------------------------------------
-- Company: Amirkabir University of technology
 
-- Engineers: Raha Ahmadi - Mahla Sharifi

-- Module Name:    Comparator_1bit - Behavioral 

-- Project Name: Lab2

-- Description: 
-- This is the code of implementing a 1bit comparator 

----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Comparator_1bit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           G : in  STD_LOGIC;
           E : in  STD_LOGIC;
           L : in  STD_LOGIC;
           A_GT_B : out  STD_LOGIC;
           A_EQ_B : out  STD_LOGIC;
           A_LT_B : out  STD_LOGIC);
end Comparator_1bit;

architecture Behavioral of Comparator_1bit is

signal is_equal : STD_LOGIC;
signal is_greater : STD_LOGIC;
signal is_lower : STD_LOGIC;

begin

	is_equal <= A xnor B;
	is_greater <= A and (not B);
	is_lower <= (not A) and B;

	A_LT_B <= (is_equal and L) or is_lower;
	A_GT_B <= (is_equal and G) or is_greater;
	A_EQ_B <= is_equal and E;
	
end Behavioral;

