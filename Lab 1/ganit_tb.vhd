--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:20:13 02/07/2019
-- Design Name:   
-- Module Name:   /home/rohanabhishek/Documents/Sem 4/CS 226/gl01debug/ganit_tb.vhd
-- Project Name:  gl01debug
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gl1_code
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
 
ENTITY ganit_tb IS
END ganit_tb;
 
ARCHITECTURE behavior OF ganit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gl1_code
    PORT(
         a_in : IN  std_logic_vector(6 downto 0);
         b_in : IN  std_logic_vector(6 downto 0);
         sel : IN  std_logic_vector(1 downto 0);
         out_b : OUT  std_logic_vector(7 downto 0);
			out_bcd : OUT std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a_in : std_logic_vector(6 downto 0) := (others => '0');
   signal b_in : std_logic_vector(6 downto 0) := (others => '0');
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal out_b : std_logic_vector(7 downto 0);
	signal out_bcd : std_logic_vector(11 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gl1_code PORT MAP (
          a_in => a_in,
          b_in => b_in,
          sel => sel,
          out_b => out_b,
			 out_bcd => out_bcd
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		sel <= "00";
		a_in <= "0000011";
		b_in <= "0000001";
		
		wait for 10ns;
		sel <= "01";
		a_in <= "0000010";
		b_in <= "0000001";
		
		wait for 10ns;
		sel <= "10";
		a_in <= "0000011";
		b_in <= "0000001";
		
		wait for 10ns;
		
		
		sel <= "11";
		a_in <= "0000011";
		b_in <= "0000001";
		wait for 10ns;
		
		sel <= "00";
		a_in <= "0000011";
		b_in <= "0000001";
		
		wait for 10ns;
		
		sel <= "01";
		a_in <= "0000001";
		b_in <= "0000111";
		wait for 10ns;
		
		
		sel <= "10";
		a_in <= "0000001";
		b_in <= "0000111";
		
		wait for 10ns;
		sel <= "11";
		a_in <= "0000001";
		b_in <= "0000111";
		wait for 10ns;
		
		sel <= "00";
		a_in <= "1000001";
		b_in <= "0000111";
		wait for 10ns;
		
		sel <= "01";
		a_in <= "0000001";
		b_in <= "0000111";
		wait for 10ns;
		
		sel <= "10";
		a_in <= "0000001";
		b_in <= "0000111";
		wait for 10ns;
		

		
		sel <= "11";
		a_in <= "0000001";
		b_in <= "0000111";
		wait for 10ns;
		
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
