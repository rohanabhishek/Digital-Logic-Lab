----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:12:58 02/06/2019 
-- Design Name: 
-- Module Name:    ans_mult - Behavioral 
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

entity ans_mult is
    Port ( a_in : in  STD_LOGIC_VECTOR (6 downto 0);
           b_in : in  STD_LOGIC_VECTOR (6 downto 0);
           out_b : out  STD_LOGIC_VECTOR (7 downto 0));
end ans_mult;

architecture Behavioral of ans_mult is
component ans_full_adder is
Port ( a_in : in  STD_LOGIC_VECTOR (6 downto 0);
           b_in : in  STD_LOGIC_VECTOR (6 downto 0);
           out_b : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal temp0 : std_logic_vector (6 downto 0);
signal temp1 : std_logic_vector (6 downto 0);
signal temp2 : std_logic_vector (6 downto 0);
signal temp3 : std_logic_vector (6 downto 0);
signal ans1 : std_logic_vector (7 downto 0);
signal ans2 : std_logic_vector (7 downto 0);
signal temp4 : std_logic_vector (6 downto 0);
signal temp5 : std_logic_vector (6 downto 0);
begin
	process(a_in,b_in,temp0,temp1,temp2,temp3,temp4,temp5,ans1,ans2) is
	begin
	temp0 <= "0000000"; 
	temp1 <= "0000000"; 
	temp2 <= "0000000"; 
	temp3 <= "0000000"; 
	temp0(0) <= a_in(0) AND b_in(0);
	temp0(1) <= a_in(1) AND b_in(0);
	temp0(2) <= a_in(2) AND b_in(0);
	temp0(3) <= a_in(3) AND b_in(0);
	temp1(1) <= a_in(0) AND b_in(1);
	temp1(2) <= a_in(1) AND b_in(1);
	temp1(3) <= a_in(2) AND b_in(1);
	temp1(4) <= a_in(3) AND b_in(1);
	temp2(2) <= a_in(0) AND b_in(2);
	temp2(3) <= a_in(1) AND b_in(2);
	temp2(4) <= a_in(2) AND b_in(2);
	temp2(5) <= a_in(3) AND b_in(2);
	temp3(3) <= a_in(0) AND b_in(3);
	temp3(4) <= a_in(1) AND b_in(3);
	temp3(5) <= a_in(2) AND b_in(3);
	temp3(6) <= a_in(3) AND b_in(3);
	end process;
	DUT6: ans_full_adder port map(temp0, temp1, ans1);
	DUT7: ans_full_adder port map(temp2, temp3, ans2);
	process(ans1,ans2) is
	begin
	temp4 <= "0000000"; 
	temp5 <= "0000000";
	temp4 <= ans1(6 downto 0);
	temp5 <= ans2(6 downto 0);
--	temp4(0) <= ans1(0);
--	temp4(1) <= ans1(1);temp4(2) <= ans1(2);temp4(3) <= ans1(3);
--	temp4(4) <= ans1(4);temp4(5) <= ans1(5);
--	temp5(0) <= ans2(0);temp5(1) <= ans2(1);temp5(2) <= ans2(2);temp5(3) <= ans2(3);
--	temp5(4) <= ans2(4);temp5(5) <= ans2(5);
	
	end process;
	DUT8: ans_full_adder port map(temp4, temp5, out_b);
end Behavioral;

