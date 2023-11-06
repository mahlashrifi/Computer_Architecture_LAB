----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:16:07 05/01/2021 
-- Design Name: 
-- Module Name:    add_sub_4bit - Behavioral 
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

entity AddSub_4bit is
    Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
           B : in  STD_LOGIC_VECTOR(3 downto 0);
           sel : in  STD_LOGIC;    -- sel = 0 : add / sel = 1 : subtract
           output : out  STD_LOGIC_VECTOR(3 downto 0);
           Cout : out  STD_LOGIC);
end AddSub_4bit;

architecture Behavioral of AddSub_4bit is

component RippleAdder_4bit is
    Port ( X : in  STD_LOGIC_VECTOR(3 downto 0);
           Y : in  STD_LOGIC_VECTOR(3 downto 0);
			  carry_in : in  STD_LOGIC;
			  S : out  STD_LOGIC_VECTOR(3 downto 0);
           carry_out : out  STD_LOGIC);
end component;

signal B_signal : STD_LOGIC_VECTOR(3 downto 0);
begin

B_signal(0) <= B(0) xor sel;
B_signal(1) <= B(1) xor sel;
B_signal(2) <= B(2) xor sel;
B_signal(3) <= B(3) xor sel;

RA : RippleAdder_4bit port map (X => A, Y => B_signal, carry_in => sel, S => output);

end Behavioral;

