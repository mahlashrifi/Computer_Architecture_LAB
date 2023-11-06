--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:40:30 05/02/2021
-- Design Name:   
-- Module Name:   C:/Users/My NoteBook/Desktop/subtractor/Subtractors/FS_1bit_test.vhd
-- Project Name:  Subtractors
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FS_1bit
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
 
ENTITY FS_1bit_test IS
END FS_1bit_test;
 
ARCHITECTURE behavior OF FS_1bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FS_1bit
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Bin : IN  std_logic;
         Bout : OUT  std_logic;
         sub : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Bin : std_logic := '0';

 	--Outputs
   signal Bout : std_logic;
   signal sub : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FS_1bit PORT MAP (
          A => A,
          B => B,
          Bin => Bin,
          Bout => Bout,
          sub => sub
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		
		A <= '0';		B <= '0';		Bin <= '0';
		wait for 20 ns;
		
     
		A <= '0';		B <= '0';		Bin <= '1';
		wait for 20 ns;
		
		
		A <= '0';		B <= '1';		Bin <= '0';
		wait for 20 ns;
		

		A <= '0';		B <= '1';		Bin <= '1';
		wait for 20 ns;
		

		A <= '1';		B <= '0';		Bin <= '0';
		wait for 20 ns;
		

		A <= '1';		B <= '0';		Bin <= '1';
		wait for 20 ns;
		

		A <= '1';		B <= '1';		Bin <= '0';
		wait for 20 ns;
		
		
		
		

		A <= '1';		B <= '1';		Bin <= '1';
		wait for 20 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
