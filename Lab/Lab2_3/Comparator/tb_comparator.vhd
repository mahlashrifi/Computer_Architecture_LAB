----------------------------------------------------------------------------------
-- Company: Amirkabir University of technology
 
-- Engineers: Raha Ahmadi - Mahla Sharifi

-- Module Name:    tb_comparator - Behavioral 

-- Project Name: Lab2

-- Description: 
-- This is the code of implementing a testbench for 4bit comparator  

----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_comparator IS
END tb_comparator;
 
ARCHITECTURE behavior OF tb_comparator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator_4bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         A_GT_B : OUT  std_logic;
         A_EQ_B : OUT  std_logic;
         A_LT_B : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal A_GT_B : std_logic;
   signal A_EQ_B : std_logic;
   signal A_LT_B : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator_4bit PORT MAP (
          A => A,
          B => B,
          A_GT_B => A_GT_B,
          A_EQ_B => A_EQ_B,
          A_LT_B => A_LT_B
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A <= "0000";
		B <= "0101";
		wait for 100 ns;	
		
		A <= "1100";
		B <= "0101";
		wait for 100 ns;	
		
		A <= "0000";
		B <= "0000";
		wait for 100 ns;	
		
		A <= "1000";
		B <= "0100";
		wait for 100 ns;
		

      wait;
   end process;

END;
