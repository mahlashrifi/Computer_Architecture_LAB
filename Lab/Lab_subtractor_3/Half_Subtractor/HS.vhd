----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:05:47 05/02/2021 
-- Design Name: 
-- Module Name:    HS - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity HS is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           borrow : out  STD_LOGIC;
           sub : out  STD_LOGIC);
end HS;

architecture Behavioral of HS is

begin

	sub <= x xor y;
	borrow <= (not x) and y;
	


end Behavioral;

