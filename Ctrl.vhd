--------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:57:31 03/26/2025 
-- Design Name: 
-- Module Name:    Ctrl - Behavioral 
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

--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity Ctrl is
    Port ( OP 			: in  STD_LOGIC_VECTOR (4 downto 0);
           CE_ZF 		: out  STD_LOGIC;
		     CE_CF 		: out STD_LOGIC;
		     CE_OVF 	: out STD_LOGIC;
		     CE_NF 		: out STD_LOGIC;
           ALUOP 		: out  STD_LOGIC_VECTOR (2 downto 0);
           MemWr 		: out  STD_LOGIC;
           Mem2Reg 	: out  STD_LOGIC;
           RegWr 		: out  STD_LOGIC;
           RegDest	: out  STD_LOGIC;
			  Branch 	: out STD_LOGIC);
end Ctrl;

architecture Behavioral of Ctrl is

begin
CE_NF <= '1' when (OP = "01000" -- ADD
					or OP = "01010" -- SUB
					or OP = "01100" -- AND
					or OP = "01110" -- IOR
					or OP = "11111"	-- SE Ws, Wd
					or OP = "11101"	-- COM Ws, Wd
					or OP = "00011")	-- SUBBR Wb, Ws, Wd
					else '0';
				
CE_OVF <= '1' when (OP = "01000" -- ADD
					or OP = "01010"	-- SUB
					or OP = "00011")	-- SUBBR Wb, Ws, Wd			
					else '0';
					
CE_ZF <= '1' when (OP = "01000"	-- ADD
					or OP = "01010"	-- SUB
					or OP = "01100"	-- AND
					or OP = "01110" 	-- IOR
					or OP = "11111"	-- SE Ws, Wd
					or OP = "11101"	-- COM Ws, Wd
					or OP = "00011")	-- SUBBR Wb, Ws, Wd
					else '0';

CE_CF <= '1' when (OP = "01000" -- ADD
					or OP = "01010"  -- SUB
					or OP = "11111"  -- SE Ws, Wd
					or OP = "00011") -- SUBBR Wb, Ws, Wd
					else '0';

MemWr <= '1' when OP = "10001" else		-- MOV wns, f
         '0'; 

Mem2Reg <= '1' when OP = "10000" else	-- MOV f, wnd
           '0'; 

RegWr <= '1' when (OP = "01000"		-- ADD
				      or OP = "01010" 	-- SUB
					   or OP = "01100" 	-- AND
					   or OP = "01110" 	-- IOR
					   or OP = "10000"	-- MOV f, wnd
						or OP = "10100"	-- BTG Ws, #bit4
						or OP = "11111" 	-- SE Ws, Wd
						or OP = "11101"	-- COM Ws, Wd
						or OP = "00011")	-- SUBBR Wb, Ws, Wd
						else '0';
			
RegDest <= '0' when (OP = "10000"			-- MOV f, wnd
						or OP = "10100") else	-- BTG Ws, #bit4
						'1';
		
ALUOP <= "000" when OP = "01000" else	-- ADD
	      "001" when OP = "01010" else 	-- SUB 
			"010" when OP = "01100" else 	-- AND
			"011" when OP = "01110" else 	-- IOR
			"100" when OP = "00011" else	-- SUBBR Wb, Ws, Wd
			"101" when OP = "11101" else	-- COM Ws, Wd
			"110" when OP = "11111" else	-- SE Ws, Wd
			"111" when OP = "10100" else	-- BTG Ws, #bit4
			"000";
		
Branch <= '1' when OP = "00110" else '0';

end Behavioral;