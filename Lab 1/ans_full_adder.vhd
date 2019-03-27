----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:45:01 02/06/2019 
-- Design Name: 
-- Module Name:    ans_full_adder - Behavioral 
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

entity ans_full_adder is
Port ( a_in : in  STD_LOGIC_VECTOR (6 downto 0);
           b_in : in  STD_LOGIC_VECTOR (6 downto 0);
           out_b : out  STD_LOGIC_VECTOR (7 downto 0));
end ans_full_adder;

architecture Behavioral of ans_full_adder is
component full_adder is
port(
 a: in std_logic;
 b: in std_logic;
 cin: in std_logic;
 s: out std_logic;
 cout: out std_logic);
 end component;

signal temp0 : std_logic;
signal temp1 : std_logic;
signal temp2 : std_logic;
signal temp3 : std_logic;
signal temp4 : std_logic;
signal temp5 : std_logic;
signal cout1: std_logic;
begin
	DUT0 : full_adder port map(a => a_in(0),b => b_in(0),cin =>'0',s => out_b(0),cout => temp0);
	DUT1 : full_adder port map(a => a_in(1),b => b_in(1),cin => temp0,s => out_b(1),cout => temp1);
	DUT2 : full_adder port map(a => a_in(2),b => b_in(2),cin => temp1,s => out_b(2),cout => temp2);
	DUT3 : full_adder port map(a => a_in(3),b => b_in(3),cin => temp2,s => out_b(3),cout => temp3);
	DUT4 : full_adder port map(a => a_in(4),b => b_in(4),cin => temp3,s => out_b(4),cout => temp4);
	DUT5 : full_adder port map(a => a_in(5),b => b_in(5),cin => temp4,s => out_b(5),cout => temp5);
	DUT6 : full_adder port map(a => a_in(6),b => b_in(6),cin => temp5,s => out_b(6),cout => out_b(7));
	--out_b(7) <= '0';
end Behavioral;

