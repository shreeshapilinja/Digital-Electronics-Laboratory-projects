----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:38:22 11/21/2021 
-- Design Name: 
-- Module Name:    full_subtractor - Behavioral 
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

entity full_subtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           dif : out  STD_LOGIC;
           bor : out  STD_LOGIC);
end full_subtractor;

architecture Behavioral of full_subtractor is
begin
dif<=(c and ((not(a) and (not b)) or (a and b))) xor ((not ((not(a) and (not b)) or (a and b))) and (not c));
bor<=((((not a) and b) xor (b and c)) xor ((not a) and c));
end Behavioral;

