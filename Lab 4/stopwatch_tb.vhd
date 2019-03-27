--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:30:46 03/13/2019
-- Design Name:   
-- Module Name:   /home/rohanabhishek/gl4/stopwatch_tb.vhd
-- Project Name:  gl4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: stopwatch
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
 
ENTITY stopwatch_tb IS
END stopwatch_tb;
 
ARCHITECTURE behavior OF stopwatch_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT stopwatch
    PORT(
         v_start : IN  std_logic;
         v_stop : IN  std_logic;
         v_rst : IN  std_logic;
			sys_rst : in  STD_LOGIC;
         time_ms : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal v_start : std_logic := '0';
   signal v_stop : std_logic := '0';
   signal v_rst : std_logic := '0';
	signal sys_rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal time_ms : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: stopwatch PORT MAP (
          v_start => v_start,
          v_stop => v_stop,
          v_rst => v_rst,
			 sys_rst => sys_rst,
          time_ms => time_ms,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		sys_rst <= '0';
		v_start <= '1';
		v_stop <= '0';
		v_rst <= '0';
		
		wait for 3000000 ns;
		v_start <= '0';
		v_stop <= '1';
		v_rst <= '0';
		
		wait for 3000000 ns;
		v_start <= '0';
		v_stop <= '0';
		v_rst <= '1';
		
		wait for 1000000 ns;
		v_start <= '1';
		v_stop <= '0';
		v_rst <= '0';
		
		wait for 3000000 ns;
		v_start <= '0';
		v_stop <= '0';
		v_rst <= '1';
		
		wait for 1000000 ns;
		v_start <= '0';
		v_stop <= '0';
		v_rst <= '0';
		
		wait for 2000000 ns;
		v_start <= '0';
		v_stop <= '1';
		v_rst <= '0';
		
		wait for 2000000 ns;
		v_start <= '0';
		v_stop <= '0';
		v_rst <= '1';
		
		wait for 2000000 ns;
		v_start <= '0';
		v_stop <= '0';
		v_rst <= '0';
		
		wait for 2000000 ns;
		v_start <= '1';
		v_stop <= '0';
		v_rst <= '0';
		
		wait for 2000000 ns;
		sys_rst <= '1';
		v_start <= '0';
		v_stop <= '0';
		v_rst <= '0';
		
		wait for 2000000 ns;
		v_start <= '1';
		v_stop <= '0';
		v_rst <= '0';
		
      wait;
   end process;

END;
