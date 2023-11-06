----------------------------------------------------------------------------------
-- Company: Amirkabir University of technology
 
-- Engineers: Raha Ahmadi - Mahla Sharifi

-- Module Name:    Encoder4to2 - Behavioral 

-- Project Name: Lab2

-- Description: 
-- This is the code of implementing a 4-to-2 encoder 

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Encoder4to2 is
    Port ( y0 : in  STD_LOGIC;
           y1 : in  STD_LOGIC;
           y2 : in  STD_LOGIC;
           y3 : in  STD_LOGIC;
           m0 : out  STD_LOGIC;
           m1 : out  STD_LOGIC);
end Encoder4to2;

architecture Behavioral of Encoder4to2 is

begin

	m0 <= y3 or y1;
	m1 <= y3 or y2;

end Behavioral;

