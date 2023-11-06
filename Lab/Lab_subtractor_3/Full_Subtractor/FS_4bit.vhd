----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:21:38 05/02/2021 
-- Design Name: 
-- Module Name:    FS_4bit - Behavioral 
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


entity FS_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           B : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Bin : in  STD_LOGIC;
           sub : out  STD_LOGIC_VECTOR (3 DOWNTO 0);
           Bout : out  STD_LOGIC);
end FS_4bit;

architecture Behavioral of FS_4bit is


component FS_1bit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC; -- Bin is borrow in. it is like sub = x-y-z
           Bout : out  STD_LOGIC;
           sub : out  STD_LOGIC);
end component FS_1bit;

signal int_borrow : std_logic_vector(2 downto 0);
 
begin
	
	fs0 : FS_1bit port map ( A => A(0), B => B(0), Bin => Bin, Bout => int_borrow(0), sub => sub(0)); 
	fs1 : FS_1bit port map ( A => A(1), B => B(1), Bin => int_borrow(0), Bout => int_borrow(1), sub => sub(1)); 
	fs2 : FS_1bit port map ( A => A(2), B => B(2), Bin => int_borrow(1), Bout => int_borrow(2), sub => sub(2)); 
	fs3 : FS_1bit port map ( A => A(3), B => B(3), Bin => int_borrow(2), Bout => Bout, sub => sub(3)); 

				

end Behavioral;

