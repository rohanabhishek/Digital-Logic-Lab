----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:16 02/06/2019 
-- Design Name: 
-- Module Name:    BCD - Behavioral 
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

entity BCD is
    Port ( A_in  : in  STD_LOGIC_VECTOR (7 downto 0);
           BCD_out : out  STD_LOGIC_VECTOR (11 downto 0));
end BCD;

architecture Behavioral of BCD is

begin
	process(A_in) is
	begin
		case A_in is
			when "00000000" => BCD_out <= "000000000000";
			when "00000001" => BCD_out <= "000000000001";
			when "00000010" => BCD_out <= "000000000010";
			when "00000011" => BCD_out <= "000000000011";
			when "00000100" => BCD_out <= "000000000100";
			when "00000101" => BCD_out <= "000000000101";
			when "00000110" => BCD_out <= "000000000110";
			when "00000111" => BCD_out <= "000000000111";
			when "00001000" => BCD_out <= "000000001000";
			when "00001001" => BCD_out <= "000000001001";
			
			when "00001010" => BCD_out <= "000000010000";
			when "00001011" => BCD_out <= "000000010001";
			when "00001100" => BCD_out <= "000000010010";
			when "00001101" => BCD_out <= "000000010011";
			when "00001110" => BCD_out <= "000000010100";
			when "00001111" => BCD_out <= "000000010101";
			when "00010000" => BCD_out <= "000000010110";
			when "00010001" => BCD_out <= "000000010111";
			when "00010010" => BCD_out <= "000000011000";
			when "00010011" => BCD_out <= "000000011001";
			
			when "00010100" => BCD_out <= "000000100000";
			when "00010101" => BCD_out <= "000000100001";
			when "00010110" => BCD_out <= "000000100010";
			when "00010111" => BCD_out <= "000000100011";
			when "00011000" => BCD_out <= "000000100100";
			when "00011001" => BCD_out <= "000000100101";
			when "00011010" => BCD_out <= "000000100110";
			when "00011011" => BCD_out <= "000000100111";
			when "00011100" => BCD_out <= "000000101000";
			when "00011101" => BCD_out <= "000000101001";
			
			when "00011110" => BCD_out <= "000000110000";
			when "00011111" => BCD_out <= "000000110001";
			when "00100000" => BCD_out <= "000000110010";
			when "00100001" => BCD_out <= "000000110011";
			when "00100010" => BCD_out <= "000000110100";
			when "00100011" => BCD_out <= "000000110101";
			when "00100100" => BCD_out <= "000000110110";
			when "00100101" => BCD_out <= "000000110111";
			when "00100110" => BCD_out <= "000000111000";
			when "00100111" => BCD_out <= "000000111001";
			
			when "00101000" => BCD_out <= "000001000000";
			when "00101001" => BCD_out <= "000001000001";
			when "00101010" => BCD_out <= "000001000010";
			when "00101011" => BCD_out <= "000001000011";
			when "00101100" => BCD_out <= "000001000100";
			when "00101101" => BCD_out <= "000001000101";
			when "00101110" => BCD_out <= "000001000110";
			when "00101111" => BCD_out <= "000001000111";
			when "00110000" => BCD_out <= "000001001000";
			when "00110001" => BCD_out <= "000001001001";
			
			when "00110010" => BCD_out <= "000001010000";
			when "00110011" => BCD_out <= "000001010001";
			when "00110100" => BCD_out <= "000001010010";
			when "00110101" => BCD_out <= "000001010011";
			when "00110110" => BCD_out <= "000001010100";
			when "00110111" => BCD_out <= "000001010101";
			when "00111000" => BCD_out <= "000001010110";
			when "00111001" => BCD_out <= "000001010111";
			when "00111010" => BCD_out <= "000001011000";
			when "00111011" => BCD_out <= "000001011001";
			
			when "00111100" => BCD_out <= "000001100000";
			when "00111101" => BCD_out <= "000001100001";
			when "00111110" => BCD_out <= "000001100010";
			when "00111111" => BCD_out <= "000001100011";
			when "01000000" => BCD_out <= "000001100100";
			when "01000001" => BCD_out <= "000001100101";
			when "01000010" => BCD_out <= "000001100110";
			when "01000011" => BCD_out <= "000001100111";
			when "01000100" => BCD_out <= "000001101000";
			when "01000101" => BCD_out <= "000001101001";
			
			when "01000110" => BCD_out <= "000001110000";
			when "01000111" => BCD_out <= "000001110001";
			when "01001000" => BCD_out <= "000001110010";
			when "01001001" => BCD_out <= "000001110011";
			when "01001010" => BCD_out <= "000001110100";
			when "01001011" => BCD_out <= "000001110101";
			when "01001100" => BCD_out <= "000001110110";
			when "01001101" => BCD_out <= "000001110111";
			when "01001110" => BCD_out <= "000001111000";
			when "01001111" => BCD_out <= "000001111001";
			
			when "01010000" => BCD_out <= "000010000000";
			when "01010001" => BCD_out <= "000010000001";
			when "01010010" => BCD_out <= "000010000010";
			when "01010011" => BCD_out <= "000010000011";
			when "01010100" => BCD_out <= "000010000100";
			when "01010101" => BCD_out <= "000010000101";
			when "01010110" => BCD_out <= "000010000110";
			when "01010111" => BCD_out <= "000010000111";
			when "01011000" => BCD_out <= "000010001000";
			when "01011001" => BCD_out <= "000010001001";
			
			when "01011010" => BCD_out <= "000010010000";
			when "01011011" => BCD_out <= "000010010001";
			when "01011100" => BCD_out <= "000010010010";
			when "01011101" => BCD_out <= "000010010011";
			when "01011110" => BCD_out <= "000010010100";
			when "01011111" => BCD_out <= "000010010101";
			when "01100000" => BCD_out <= "000010010110";
			when "01100001" => BCD_out <= "000010010111";
			when "01100010" => BCD_out <= "000010011000";
			when "01100011" => BCD_out <= "000010011001";
			
			----99----
			
			when "01100100" => BCD_out <= "000100000000";
			when "01100101" => BCD_out <= "000100000001";
			when "01100110" => BCD_out <= "000100000010";
			when "01100111" => BCD_out <= "000100000011";
			when "01101000" => BCD_out <= "000100000100";
			when "01101001" => BCD_out <= "000100000101";
			when "01101010" => BCD_out <= "000100000110";
			when "01101011" => BCD_out <= "000100000111";
			when "01101100" => BCD_out <= "000100001000";
			when "01101101" => BCD_out <= "000100001001";
			
			when "01101110" => BCD_out <= "000100010000";
			when "01101111" => BCD_out <= "000100010001";
			when "01110000" => BCD_out <= "000100010010";
			when "01110001" => BCD_out <= "000100010011";
			when "01110010" => BCD_out <= "000100010100";
			when "01110011" => BCD_out <= "000100010101";
			when "01110100" => BCD_out <= "000100010110";
			when "01110101" => BCD_out <= "000100010111";
			when "01110110" => BCD_out <= "000100011000";
			when "01110111" => BCD_out <= "000100011001";
			
			when "01111000" => BCD_out <= "000100100000";
			when "01111001" => BCD_out <= "000100100001";
			when "01111010" => BCD_out <= "000100100010";
			when "01111011" => BCD_out <= "000100100011";
			when "01111100" => BCD_out <= "000100100100";
			when "01111101" => BCD_out <= "000100100101";
			when "01111110" => BCD_out <= "000100100110";
			when "01111111" => BCD_out <= "000100100111";
			when "10000000" => BCD_out <= "000100101000";
			when "10000001" => BCD_out <= "000100101001";
			
			when "10000010" => BCD_out <= "000100110000";
			when "10000011" => BCD_out <= "000100110001";
			when "10000100" => BCD_out <= "000100110010";
			when "10000101" => BCD_out <= "000100110011";
			when "10000110" => BCD_out <= "000100110100";
			when "10000111" => BCD_out <= "000100110101";
			when "10001000" => BCD_out <= "000100110110";
			when "10001001" => BCD_out <= "000100110111";
			when "10001010" => BCD_out <= "000100111000";
			when "10001011" => BCD_out <= "000100111001";
			
			when "10001100" => BCD_out <= "000101000000";
			when "10001101" => BCD_out <= "000101000001";
			when "10001110" => BCD_out <= "000101000010";
			when "10001111" => BCD_out <= "000101000011";
			when "10010000" => BCD_out <= "000101000100";
			when "10010001" => BCD_out <= "000101000101";
			when "10010010" => BCD_out <= "000101000110";
			when "10010011" => BCD_out <= "000101000111";
			when "10010100" => BCD_out <= "000101001000";
			when "10010101" => BCD_out <= "000101001001";
			
			when "10010110" => BCD_out <= "000101010000";
			when "10010111" => BCD_out <= "000101010001";
			when "10011000" => BCD_out <= "000101010010";
			when "10011001" => BCD_out <= "000101010011";
			when "10011010" => BCD_out <= "000101010100";
			when "10011011" => BCD_out <= "000101010101";
			when "10011100" => BCD_out <= "000101010110";
			when "10011101" => BCD_out <= "000101010111";
			when "10011110" => BCD_out <= "000101011000";
			when "10011111" => BCD_out <= "000101011001";
			
			when "10100000" => BCD_out <= "000101100000";
			when "10100001" => BCD_out <= "000101100001";
			when "10100010" => BCD_out <= "000101100010";
			when "10100011" => BCD_out <= "000101100011";
			when "10100100" => BCD_out <= "000101100100";
			when "10100101" => BCD_out <= "000101100101";
			when "10100110" => BCD_out <= "000101100110";
			when "10100111" => BCD_out <= "000101100111";
			when "10101000" => BCD_out <= "000101101000";
			when "10101001" => BCD_out <= "000101101001";
			
			when "10101010" => BCD_out <= "000101110000";
			when "10101011" => BCD_out <= "000101110001";
			when "10101100" => BCD_out <= "000101110010";
			when "10101101" => BCD_out <= "000101110011";
			when "10101110" => BCD_out <= "000101110100";
			when "10101111" => BCD_out <= "000101110101";
			when "10110000" => BCD_out <= "000101110110";
			when "10110001" => BCD_out <= "000101110111";
			when "10110010" => BCD_out <= "000101111000";
			when "10110011" => BCD_out <= "000101111001";
			
			when "10110100" => BCD_out <= "000110000000";
			when "10110101" => BCD_out <= "000110000001";
			when "10110110" => BCD_out <= "000110000010";
			when "10110111" => BCD_out <= "000110000011";
			when "10111000" => BCD_out <= "000110000100";
			when "10111001" => BCD_out <= "000110000101";
			when "10111010" => BCD_out <= "000110000110";
			when "10111011" => BCD_out <= "000110000111";
			when "10111100" => BCD_out <= "000110001000";
			when "10111101" => BCD_out <= "000110001001";
			
			when "10111110" => BCD_out <= "000110010000";
			when "10111111" => BCD_out <= "000110010001";
			when "11000000" => BCD_out <= "000110010010";
			when "11000001" => BCD_out <= "000110010011";
			when "11000010" => BCD_out <= "000110010100";
			when "11000011" => BCD_out <= "000110010101";
			when "11000100" => BCD_out <= "000110010110";
			when "11000101" => BCD_out <= "000110010111";
			when "11000110" => BCD_out <= "000110011000";
			when "11000111" => BCD_out <= "000110011001";
			
			when others => 
		end case;

	end process;
end Behavioral;

