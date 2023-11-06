----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:18:46 05/02/2021 
-- Design Name: 
-- Module Name:    FS_1bit - Behavioral 
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



entity FS_1bit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC; -- Bin is borrow in. it is like sub = x-y-z
           Bout : out  STD_LOGIC;
           sub : out  STD_LOGIC);
end FS_1bit;

architecture Behavioral of FS_1bit is



component HS is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           borrow : out  STD_LOGIC;
           sub : out  STD_LOGIC);
end component HS;

signal int_Bout : std_logic_vector (1 downto 0);
signal int_sub : std_logic_vector(1 downto 0);

begin

	HS0 : HS port map ( x => A, y => B, borrow => int_Bout(0), sub => int_sub(0));
	HS1 : HS port map ( x => int_sub(0), y => Bin, borrow => int_Bout(1), sub => int_sub(1));
	
	sub <= int_sub(1);
	Bout <= int_Bout(0) or int_Bout(1);


end Behavioral;

