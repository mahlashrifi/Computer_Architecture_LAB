--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:28:12 05/02/2021
-- Design Name:   
-- Module Name:   C:/Users/My NoteBook/Desktop/subtractor/Subtractors/FS_4bit_test.vhd
-- Project Name:  Subtractors
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FS_4bit
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
 
ENTITY FS_4bit_test IS
END FS_4bit_test;
 
ARCHITECTURE behavior OF FS_4bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FS_4bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Bin : IN  std_logic;
         sub : OUT  std_logic_vector(3 downto 0);
         Bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Bin : std_logic := '0';

 	--Outputs
   signal sub : std_logic_vector(3 downto 0);
   signal Bout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FS_4bit PORT MAP (
          A => A,
          B => B,
          Bin => Bin,
          sub => sub,
          Bout => Bout
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      A <= "0000";	B <= "0011";	Bin <= '1';	
		wait for 30 ns;
		report "0000 - 0011 (with Bin 1 )= 1100 with Bout 1";
		
      A <= "0110";	B <= "0101";	Bin <= '1';	
		wait for 30 ns;
		report "0110 - 0101 (with Bin 1 )= 0000 with Bout 0";
		
      A <= "1000";	B <= "1101";	Bin <= '0';	
		wait for 30 ns;
		report "1000 - 1101 (with Bin 0 )= 1011 with Bout 1";
		
      A <= "0111";	B <= "0000";	Bin <= '1';	
		wait for 30 ns;
		report "0111 - 0000 (with Bin 1 )= 0110 with Bout 0";
		
      A <= "1110";	B <= "0010";	Bin <= '0';
		wait for 30 ns;	
		report "1110 - 0010 (with Bin 0 )= 1100 with Bout 0";		
		
      A <= "0110";	B <= "0000";	Bin <= '0';	
		wait for 30 ns;
		report "0110 - 0000 (with Bin 1 )= 0110 with Bout 0";
		
      A <= "1001";	B <= "1111";	Bin <= '1';	  
		wait for 30 ns;
		report "1001 - 1111 (with Bin 1 )= 1001 with Bout 1";
      -- insert stimulus here 

      wait;
   end process;

END;
