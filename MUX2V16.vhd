----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:36:34 03/26/2025 
-- Design Name: 
-- Module Name:    MUX2V16 - Behavioral 
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

entity MUX2V16 is
	port(
		I0	: in std_logic_vector(15 downto 0);
		I1: in std_logic_vector(15 downto 0);
		Sel: in std_logic;
		Y: out std_logic_vector(15 downto 0)
	);
end MUX2V16;

architecture Behavioral of MUX2V16 is

begin

Y <= I1 when Sel = '1' else
	  I0;

end Behavioral;

