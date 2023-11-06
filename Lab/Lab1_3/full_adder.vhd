----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:51:43 03/08/2021 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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

entity full_adder is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is
	component half_adder is 
		Port( in1, in2: in std_logic;
				out1, out2 : out std_logic
		); 
	end component half_adder;	
	signal sig1, sig2, sig3: std_logic;
begin
	half_adder_instance0: half_adder port map ( in1 => i0, in2 => i1, out1 => sig1, out2 => sig2);
	half_adder_instance1: half_adder port map ( in1 => sig1, in2 => cin, out1 => s, out2 => sig3);	cout <= sig2 or sig3;

end Behavioral;

