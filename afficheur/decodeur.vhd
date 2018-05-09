----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:00 03/07/2018 
-- Design Name: 
-- Module Name:    decodeur - Behavioral 
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

entity decodeur is
    Port ( data : in  STD_LOGIC_VECTOR (3 downto 0);
           segt : out  STD_LOGIC_VECTOR (6 downto 0)
           );
end decodeur;


architecture Behavioral of decodeur is

-- Les déclarations, les différentes valeurs que peut prendre les segments 
-- d'un seul afficheur

constant aff_0: std_logic_vector(6 downto 0):= "0000001";
constant aff_1: std_logic_vector(6 downto 0):= "1001111";
constant aff_2: std_logic_vector(6 downto 0):= "0010010";
constant aff_3: std_logic_vector(6 downto 0):= "0000110";
constant aff_4: std_logic_vector(6 downto 0):= "1001100";
constant aff_5: std_logic_vector(6 downto 0):= "0100100";
constant aff_6: std_logic_vector(6 downto 0):= "0100000";
constant aff_7: std_logic_vector(6 downto 0):= "0001111";
constant aff_8: std_logic_vector(6 downto 0):= "0000000";
constant aff_9: std_logic_vector(6 downto 0):= "0000100";
constant aff_10: std_logic_vector(6 downto 0):= "0001000";
constant aff_11: std_logic_vector(6 downto 0):= "1100000";
constant aff_12: std_logic_vector(6 downto 0):= "0110001";
constant aff_13: std_logic_vector(6 downto 0):= "1000010";
constant aff_14: std_logic_vector(6 downto 0):= "0110000";
constant aff_15: std_logic_vector(6 downto 0):= "0111000";


begin


decod: process (data)
    begin
	 case data is
	        when "0000" => segt <= (aff_0);     -- En fonction de la valeur en entrée; la sortie est la valeur de l'afficheur
			  when "0001" => segt <= (aff_1);
			  when "0010" => segt <= (aff_2);
			  when "0011" => segt <= (aff_3);
			  when "0100" => segt <= (aff_4);
			  when "0101" => segt <= (aff_5);
			  when "0110" => segt <= (aff_6);
			  when "0111" => segt <= (aff_7);
			  when "1000" => segt <= (aff_8);
			  when "1001" => segt <= (aff_9);
			  when "1010" => segt <= (aff_10);
			  when "1011" => segt <= (aff_11);
			  when "1100" => segt <= (aff_12);
			  when "1101" => segt <= (aff_13);
           when "1110" => segt <= (aff_14);
			  when "1111" => segt <= (aff_15);
			  when others => segt <= (others => '1');
		end case;
		
end process decod;

end Behavioral;

