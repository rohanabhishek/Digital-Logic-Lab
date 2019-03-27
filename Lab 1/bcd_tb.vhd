--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:43:12 02/07/2019
-- Design Name:   
-- Module Name:   /home/rohanabhishek/Documents/Sem 4/CS 226/gl01debug/bcd_tb.vhd
-- Project Name:  gl01debug
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BCD
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
 
ENTITY bcd_tb IS
END bcd_tb;
 
ARCHITECTURE behavior OF bcd_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCD
    PORT(
         A_in : IN  std_logic_vector(7 downto 0);
         BCD_out : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal BCD_out : std_logic_vector(11 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCD PORT MAP (
          A_in => A_in,
          BCD_out => BCD_out
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
		A_in <= "00000000";
		wait for 10ns;
		A_in <= "00000001";
		wait for 10ns;
		A_in <= "00100000";
		wait for 10ns;
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
