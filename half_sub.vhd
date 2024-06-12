----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:16:06 11/21/2021 
-- Design Name: 
-- Module Name:    half_sub - Behavioral 
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

entity half_sub is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           dif : out  STD_LOGIC;
           bor : out  STD_LOGIC);
end half_sub;

architecture Behavioral of half_sub is

begin
dif<=(not(a) and b) or (a and (not b));
bor<=(not a) and b;
end Behavioral;

