----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:28:49 03/07/2018 
-- Design Name: 
-- Module Name:    afficheur - Behavioral 
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

entity afficheur is
    Port ( affich : in  STD_LOGIC_VECTOR (3 downto 0);
           segt : out  STD_LOGIC_VECTOR (6 downto 0);
           AN : out  STD_LOGIC_VECTOR (3 downto 0));
end afficheur;

architecture Behavioral of afficheur is

component decodeur 
    Port ( data : in  STD_LOGIC_VECTOR (3 downto 0);
           segt : out  STD_LOGIC_VECTOR (6 downto 0)
          );
		
end component;

begin

dec : decodeur port map ( affich, segt);
																	  
AN <= "1110";

end Behavioral;

