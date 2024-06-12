----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:22:14 11/29/2021 
-- Design Name: 
-- Module Name:    mux_81 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_81 is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           d0,d1,d2,d3,d4,d5,d6,d7 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end mux_81;

architecture Behavioral of mux_81 is

begin
	process(sel,d0,d1,d2,d3,d4,d5,d6,d7)
		begin
			case(sel) is
				when "000" => y <= d0;
				when "001" => y <= d1;
				when "010" => y <= d2;
				when "011" => y <= d3;
				when "100" => y <= d4;
				when "101" => y <= d5;
				when "110" => y <= d6;
				when "111" => y <= d7;
				when others => y <= d0;
		end case;
end process;


end Behavioral;

