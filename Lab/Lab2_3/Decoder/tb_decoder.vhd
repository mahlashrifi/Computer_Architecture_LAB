----------------------------------------------------------------------------------
-- Company: Amirkabir University of technology
 
-- Engineers: Raha Ahmadi - Mahla Sharifi

-- Module Name:    tb_decoder - Behavioral 

-- Project Name: Lab2

-- Description: 
-- This is the test bench of 2-to-4 decoder 

----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tb_decoder IS
END tb_decoder;
 
ARCHITECTURE behavior OF tb_decoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decoder2to4
    PORT(
         i0 : IN  std_logic;
         i1 : IN  std_logic;
         d0 : OUT  std_logic;
         d1 : OUT  std_logic;
         d2 : OUT  std_logic;
         d3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i0 : std_logic := '0';
   signal i1 : std_logic := '0';

 	--Outputs
   signal d0 : std_logic;
   signal d1 : std_logic;
   signal d2 : std_logic;
   signal d3 : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder2to4 PORT MAP (
          i0 => i0,
          i1 => i1,
          d0 => d0,
          d1 => d1,
          d2 => d2,
          d3 => d3
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		i0 <= '0';
		i1 <= '0';
		wait for 100 ns;
		
		i0 <= '1';
		i1 <= '0';
		wait for 100 ns;
		
		i0 <= '0';
		i1 <= '1';
		wait for 100 ns;
		
		i0 <= '1';
		i1 <= '1';
		wait for 100 ns;

      wait;
   end process;

END;
