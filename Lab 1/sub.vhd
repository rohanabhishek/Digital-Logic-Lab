----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:01:02 02/06/2019 
-- Design Name: 
-- Module Name:    ans_sub - Behavioral 
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

entity ans_sub is
    Port ( a_in : in  STD_LOGIC_VECTOR (6 downto 0);
           b_in : in  STD_LOGIC_VECTOR (6 downto 0);
           out_b : out  STD_LOGIC_VECTOR (7 downto 0));
end ans_sub;

architecture Behavioral of ans_sub is
component full_adder is
port(
 a: in std_logic;
 b: in std_logic;
 cin: in std_logic;
 s: out std_logic;
 cout: out std_logic);
 end component;
signal b_in1 : std_logic_vector (6 downto 0);
signal temp0 : std_logic;
signal temp1 : std_logic;
signal temp2 : std_logic;
signal temp3 : std_logic;
signal temp4 : std_logic;
signal temp5 : std_logic;
begin
--process(b_in) is
	--begin
--	b_in1(0) <= b_in(0) XOR '1';
--	b_in1(1) <= b_in(1) XOR '1';
--	b_in1(2) <= b_in(2) XOR '1';
--	b_in1(3) <= b_in(3) XOR '1';
--	b_in1(4) <= b_in(4) XOR '1';
--	b_in1(5) <= b_in(5) XOR '1';
--	b_in1(6) <= b_in(6) XOR '1';
	--end process;
	b_in1 <= not(b_in);
DUT0 : full_adder port map(a => a_in(0),b => b_in1(0),cin => '1',s => out_b(0),cout => temp0);
	DUT1 : full_adder port map(a => a_in(1),b => b_in1(1),cin => temp0,s => out_b(1),cout => temp1);
	DUT2 : full_adder port map(a => a_in(2),b => b_in1(2),cin => temp1,s => out_b(2),cout => temp2);
	DUT3 : full_adder port map(a => a_in(3),b => b_in1(3),cin => temp2,s => out_b(3),cout => temp3);
	DUT4 : full_adder port map(a => a_in(4),b => b_in1(4),cin => temp3,s => out_b(4),cout => temp4);
	DUT5 : full_adder port map(a => a_in(5),b => b_in1(5),cin => temp4,s => out_b(5),cout => temp5);
	DUT6 : full_adder port map(a => a_in(6),b => b_in1(6),cin => temp5,s => out_b(6),cout => out_b(7));

end Behavioral;

