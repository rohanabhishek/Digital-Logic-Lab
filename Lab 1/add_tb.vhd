--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:12:13 02/07/2019
-- Design Name:   
-- Module Name:   /home/rohanabhishek/Documents/Sem 4/CS 226/gl01debug/add_tb.vhd
-- Project Name:  gl01debug
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ans_full_adder
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
 
ENTITY add_tb IS
END add_tb;
 
ARCHITECTURE behavior OF add_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ans_full_adder
    PORT(
         a_in : IN  std_logic_vector(6 downto 0);
         b_in : IN  std_logic_vector(6 downto 0);
         out_b : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a_in : std_logic_vector(6 downto 0) := (others => '0');
   signal b_in : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal out_b : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ans_full_adder PORT MAP (
          a_in => a_in,
          b_in => b_in,
          out_b => out_b
        );



 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a_in <= "0001000";
		b_in <= "0000100";
		wait for 10ns;
		a_in <= "0001001";
		b_in <= "0000101";
		wait for 10ns;
		a_in <= "0000001";
		b_in <= "0000101";
		wait for 10ns;
      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;