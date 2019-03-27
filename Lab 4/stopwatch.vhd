----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:44:09 03/13/2019 
-- Design Name: 
-- Module Name:    stopwatch - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity stopwatch is
    Port ( v_start : in  STD_LOGIC;
           v_stop : in  STD_LOGIC;
           v_rst : in  STD_LOGIC;
			  sys_rst : in  STD_LOGIC;
           time_ms : out  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC);
end stopwatch;

architecture Behavioral of stopwatch is

type states is (idle,start,stop);
signal pst, nst : states := idle;
--variable counter : integer := 0;
signal time_ms1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
begin

process(clk)
	begin
		if rising_edge(clk) then
			if sys_rst = '1' then
				pst <= idle;
			else
				pst <= nst;
			end if;
		end if;
end process;

process(v_start,v_stop,v_rst,pst)
	begin
		case pst is
			when idle => 
				if v_start = '1' then
					nst <= start;
				else 
					nst <= idle;
				end if;
				
			when start =>
--				if v_start = '1' then 
--					nst <= start;
--				end if;
				if v_stop = '1' then
					nst <= stop;
				else 
					nst <= start;
				end if;
			
			when stop => 
				if v_start = '1' then
					nst <= start;
				elsif v_rst = '1' then
					nst <= idle;
				else
					nst <= stop;
				end if;
				
			when others => 
				null;
			end case;
			
		end process;

process(clk)
	variable counter : integer := 0;
	begin
		if rising_edge(clk) then
--			if v_start = '1' then
			if pst = start then
				counter := counter + 1;
			end if;
			if v_rst = '1' then
				time_ms1 <= "00000000";
				counter := 0;
			end if;
			if counter = 100000 then
				if pst = start then
					time_ms1 <= time_ms1 + "00000001";
					counter := 0;
				end if;
			end if;
			if pst = stop then
					time_ms1 <= time_ms1;
			elsif pst = idle then
				time_ms1 <= "00000000";
			end if;
		end if;
end process;

process(clk,time_ms1)
	begin
		time_ms <= time_ms1;
end process;

end Behavioral;

