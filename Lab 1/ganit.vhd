----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:33:14 02/06/2019 
-- Design Name: 
-- Module Name:    gl1 code - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity gl1_code is
    Port ( a_in : in  STD_LOGIC_VECTOR (6 downto 0);
           b_in : in  STD_LOGIC_VECTOR (6 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           out_b : out  STD_LOGIC_VECTOR (7 downto 0);
			  out_bcd : out STD_LOGIC_VECTOR (11 downto 0));
		--	  out_bcd : out STD_LOGIC_VECTOR (11 downto 0));
end gl1_code;

architecture Behavioral of gl1_code is

signal out_b1 : STD_LOGIC_VECTOR (7 downto 0);
signal out_b2: STD_LOGIC_VECTOR (7 downto 0);
signal out_b3 : STD_LOGIC_VECTOR (7 downto 0);
signal out_b4 : STD_LOGIC_VECTOR (7 downto 0);
signal out_bcd1 : STD_LOGIC_VECTOR (11 downto 0);
signal out_bcd2 : STD_LOGIC_VECTOR (11 downto 0);
signal out_bcd3 : STD_LOGIC_VECTOR (11 downto 0);
signal out_bcd4 : STD_LOGIC_VECTOR (11 downto 0);

component ans_full_adder is
Port ( a_in : in  STD_LOGIC_VECTOR (6 downto 0);
           b_in : in  STD_LOGIC_VECTOR (6 downto 0);
           out_b : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component ans_sub is
    Port ( a_in : in  STD_LOGIC_VECTOR (6 downto 0);
           b_in : in  STD_LOGIC_VECTOR (6 downto 0);
           out_b : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
--
--
component ans_mult is
    Port ( a_in : in  STD_LOGIC_VECTOR (6 downto 0);
           b_in : in  STD_LOGIC_VECTOR (6 downto 0);
           out_b : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component BCD is
    Port ( A_in  : in  STD_LOGIC_VECTOR (7 downto 0);
           BCD_out : out  STD_LOGIC_VECTOR (11 downto 0));
end component;

begin

	DUT10: ans_full_adder port map(a_in => a_in,b_in => b_in,out_b => out_b1);
	DUT11: ans_sub port map(a_in => a_in,b_in =>  b_in,out_b => out_b2);			
	DUT12: ans_mult port map(a_in => a_in,b_in => b_in,out_b => out_b3);
	DUT13: ans_mult port map(a_in => a_in,b_in => a_in,out_b => out_b4);
	DUT14: BCD port map(A_in => out_b1,BCD_out => out_bcd1);
	DUT15: BCD port map(A_in => out_b2,BCD_out => out_bcd2);
	DUT16: BCD port map(A_in => out_b3,BCD_out => out_bcd3);
	DUT17: BCD port map(A_in => out_b4,BCD_out => out_bcd4);
	--out_b <= out_b1;
	with sel select out_b <= 
			out_b1 when "00",
			out_b2 when "01",
			out_b3 when "10",
			out_b4 when "11";
			
	with sel select out_bcd <= 
			out_bcd1 when "00",
			out_bcd2 when "01",
			out_bcd3 when "10",
			out_bcd4 when "11";
	
--	process(a_in,b_in,sel) is
--		begin
--			case sel is
--				when "00" =>  out_b <= out_b1;--out_bcd <= out_bcd1;
----				when "01" =>  out_b <= out_b2;--out_bcd <= out_bcd2;
----				when "10" =>  out_b <= out_b3;--out_bcd <= out_bcd3;
----				when "11" =>  out_b <= out_b4;--out_bcd <= out_bcd4;
--				when others => 
--			end case;
--		end process;
end Behavioral;

