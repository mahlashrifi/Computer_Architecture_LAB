--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:40:46 05/02/2021
-- Design Name:   
-- Module Name:   C:/Users/My NoteBook/Desktop/subtractor/Subtractors/HS_test.vhd
-- Project Name:  Subtractors
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HS
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
 
ENTITY HS_test IS
END HS_test;
 
ARCHITECTURE behavior OF HS_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HS
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         borrow : OUT  std_logic;
         sub : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';

 	--Outputs
   signal borrow : std_logic;
   signal sub : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HS PORT MAP (
          x => x,
          y => y,
          borrow => borrow,
          sub => sub
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


		x <= '0';	y <= '0';
		wait for 30 ns;
		
		x <= '0';	y <= '1';
		wait for 30 ns;
		
		x <= '1';	y <= '0';
		wait for 30 ns;
		
		x <= '1';	y <= '1';
		wait for 30 ns;




		

      -- insert stimulus here 

      wait;
   end process;

END;
