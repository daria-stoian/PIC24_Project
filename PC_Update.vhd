----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:30:43 03/19/2025 
-- Design Name: 
-- Module Name:    PC_Update - Behavioral 
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

entity PC_Update is
    Port ( 	
				Offset : in  STD_LOGIC_VECTOR (4 downto 0);
				Branch : in STD_LOGIC;
				BranchType : in STD_LOGIC_VECTOR (2 downto 0);
				NF : in STD_LOGIC;
				OVF : in STD_LOGIC;
				ZF : in STD_LOGIC;
				CF : in STD_LOGIC;
				PC : in  STD_LOGIC_VECTOR (5 downto 0);
				New_PC : out  STD_LOGIC_VECTOR (5 downto 0));
end PC_Update;

architecture Behavioral of PC_Update is
	signal movement : std_logic_vector(5 downto 0);

begin
	movement(5 downto 0) <= Offset(4 downto 0)&'0';

	New_PC <= (PC + 2) + movement when ( Branch='1' and
					((BranchType = b"010" and ZF = '1') or
					(BranchType = b"000" and OVF = '1') or 
					(BranchType = b"001" and CF = '1') or
					(BranchType = b"011" and NF = '1') or
					 BranchType = b"111" ))
				    else PC + 2;

end Behavioral;

