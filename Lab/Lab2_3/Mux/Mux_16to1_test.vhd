--------------------------------------------------------------------------------
-- Company: Amrikabir University of technology

-- Engineers: Mahla Sharifi - Raha Ahmadi

-- Project Name:  Lab2

-- Description:   

-- VHDL Test Bench Created by ISE for module: Mux_16to1

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY Mux_16to1_test IS
END Mux_16to1_test;
 
ARCHITECTURE behavior OF Mux_16to1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_16to1
    PORT(
         i_top : IN  std_logic_vector (15 downto 0);
         sel_top : IN  std_logic_vector (3 downto 0);
         output_top : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i_top : std_logic_vector (15 downto 0) := "0000000000000000";
   signal sel_top : std_logic_vector (3 downto 0):= "0000";

 	--Outputs
   signal output_top : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_16to1 PORT MAP (
          i_top => i_top,
          sel_top => sel_top,
          output_top => output_top
        );



   -- Stimulus process
   stim_proc: process
   begin		

      wait for 100 ns;	
		
      i_top <= "0000000000000001";
		sel_top <= "0000";
		wait for 100 ns;
		
		i_top <= "0000000000000010";
		sel_top <= "0001";
		wait for 100 ns;
		
		i_top <= "0000000000000100";
		sel_top <= "0010";
		wait for 100 ns;
		
		i_top <= "0000000000001000";
	   sel_top <= "0011";
		wait for 100 ns;
		
		i_top <= "0000000000010000";
		sel_top <= "0100";
		wait for 100 ns;
		
		i_top <= "0000000001000000";
		sel_top <= "0101";
		wait for 100 ns;
		
		i_top <= "0000000010000000";
		sel_top <= "0110";
		wait for 100 ns;
		
		i_top <= "0000000100000000";
		sel_top <= "0111";
		wait for 100 ns;
		

		
		
		i_top <= "0000000100000000";
		sel_top <= "1000";
		wait for 100 ns;
		
		i_top <= "0000001000000000";
		sel_top <= "1001";
		wait for 100 ns;
		
		i_top <= "0000010000000000";
		sel_top <= "1010";
		wait for 100 ns;
		
		i_top <= "0000100000000000";
	   sel_top <= "1011";
		wait for 100 ns;
		
		i_top <= "0001000000000000";
		sel_top <= "1100";
		wait for 100 ns;
		
		i_top <= "0010000000000000";
		sel_top <= "1101";
		wait for 100 ns;
		
		i_top <= "0100000000000000";
		sel_top <= "1110";
		wait for 100 ns;
		
		i_top <= "1000000000000000";
		sel_top <= "1111";
		wait for 100 ns;
		

		



      wait;
   end process;

END;
