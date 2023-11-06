----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:29:41 04/25/2021 
-- Design Name: 
-- Module Name:    Ripple_Adder - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RippleAdder_4bit is
    Port ( X : in  STD_LOGIC_VECTOR(3 downto 0);
           Y : in  STD_LOGIC_VECTOR(3 downto 0);
			  carry_in : in  STD_LOGIC;
			  S : out  STD_LOGIC_VECTOR(3 downto 0);
           carry_out : out  STD_LOGIC);
end RippleAdder_4bit;

architecture Behavioral of RippleAdder_4bit is

	component FA
		Port ( A : in  STD_LOGIC;
             B : in  STD_LOGIC;
             Cin : in  STD_LOGIC;
             Sum : out  STD_LOGIC;
             Cout : out  STD_LOGIC);
	end component;
	
	signal carry : std_logic_VECTOR(2 downto 0);
		
begin
	
	FA0: FA port map (A => X(0), B => Y(0), Cin => carry_in, Sum => S(0), Cout => carry(0));
	FA1: FA port map (A => X(1), B => Y(1), Cin => carry(0), Sum => S(1), Cout => carry(1));
	FA2: FA port map (A => X(2), B => Y(2), Cin => carry(1), Sum => S(2), Cout => carry(2));
	FA3: FA port map (A => X(3), B => Y(3), Cin => carry(2), Sum => S(3), Cout => carry_out);

end Behavioral;

