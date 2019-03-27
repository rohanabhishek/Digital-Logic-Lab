----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:42:09 02/06/2019 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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

entity full_adder is
port(
 a: in std_logic;
 b: in std_logic;
 cin: in std_logic;
 s: out std_logic;
 cout: out std_logic);
end full_adder;

architecture Behavioral of full_adder is


begin
   process(a, b, cin) is
   begin
     s <= a XOR (b XOR cin);
     cout <= ( a and b) or ( cin and ( a XOR b ));
   end process;

end Behavioral;

