--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:02:29 05/04/2021
-- Design Name:   
-- Module Name:   F:/CA-Lab/Subtractor/tb_AddSub_4bit.vhd
-- Project Name:  Subtractor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AddSub_4bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_AddSub_4bit IS
END tb_AddSub_4bit;
 
ARCHITECTURE behavior OF tb_AddSub_4bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AddSub_4bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         sel : IN  std_logic;
         output : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AddSub_4bit PORT MAP (
          A => A,
          B => B,
          sel => sel,
          output => output,
          Cout => Cout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		 A <= "0000";	
		B <= "0011";
		sel <= '0';
		WAIT FOR 30 ns;
		
		sel <= '1';
		WAIT FOR 30 ns;

		A <= "0011";
		B <= "0100";
		sel <= '0';
		WAIT FOR 30 ns;
		
		sel <= '1';
		WAIT FOR 30 ns;
		
		A <= "1110";	
		B <= "0010";
		sel <= '0';
		WAIT FOR 30 ns;
		
		sel <= '1';
		WAIT FOR 30 ns;
		
		A <= "0110";	
		B <= "0000";
		sel <= '0';
		WAIT FOR 30 ns;
		
		sel <= '1';
		WAIT FOR 30 ns;
		
		A <= "1001";
		B <= "1111";
		sel <= '0';
		WAIT FOR 30 ns;
		
		sel <= '1';
		WAIT FOR 30 ns;

      wait;
   end process;

END;
