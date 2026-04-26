----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:51 03/26/2025 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( 	
				Clk : in STD_LOGIC;
				RdData1 : in  STD_LOGIC_VECTOR (15 downto 0);
				RdData2 : in  STD_LOGIC_VECTOR (15 downto 0);
				ALUOP	 : in STD_LOGIC_VECTOR (2 downto 0);
				
				CE_NF: in STD_LOGIC;
				CE_OVF: in STD_LOGIC;
				CE_ZF: in STD_LOGIC;
				CE_CF: in STD_LOGIC;
				
				NF: out STD_LOGIC;
				OVF: out STD_LOGIC;
				ZF: out STD_LOGIC;
				CF: out STD_LOGIC;
				
           Y : out STD_LOGIC_VECTOR (15 downto 0));
end ALU;

architecture Behavioral of ALU is

	signal OP1	  : std_logic_vector(15 downto 0);
	signal OP2	  : std_logic_vector(15 downto 0);
	
	signal sNF    : std_logic;
	signal sOVF   : std_logic;
	signal sZF    : std_logic;
	signal sCF    : std_logic;
	signal sSE	  : std_logic_vector(16 downto 0);
	signal sCOM	  : std_logic_vector(16 downto 0);
	signal sMASK  : std_logic_vector(15 downto 0);
	signal sY	  : std_logic_vector(16 downto 0);
	
begin
	OP1 <= RdData1;
	OP2 <= RdData2;
		
	Y <= sY (15 downto 0);
	
	-- COM Ws, Wd
	sCOM <= '0'&not(OP2);
	
	-- SE Ws, Wd
	sSE <= '1'&"00000000"&OP2(7 downto 0) when OP2(7)='0' else
			 '0'&"11111111"&OP2(7 downto 0);
	
	-- BTG Ws, #bit4
	sMASK <= x"0001" when OP1(15 downto 12)="0000" else
				x"0002" when OP1(15 downto 12)="0001" else
				x"0004" when OP1(15 downto 12)="0010" else
				x"0008" when OP1(15 downto 12)="0011" else
				x"0010" when OP1(15 downto 12)="0100" else
				x"0020" when OP1(15 downto 12)="0101" else
				x"0040" when OP1(15 downto 12)="0110" else
				x"0080" when OP1(15 downto 12)="0111" else
				x"0100" when OP1(15 downto 12)="1000" else
				x"0200" when OP1(15 downto 12)="1001" else
				x"0400" when OP1(15 downto 12)="1010" else
				x"0800" when OP1(15 downto 12)="1011" else
				x"1000" when OP1(15 downto 12)="1100" else
				x"2000" when OP1(15 downto 12)="1101" else
				x"4000" when OP1(15 downto 12)="1110" else
				x"8000" when OP1(15 downto 12)="1111" else
				x"0000";
	
	NF <= sNF when rising_edge(Clk) and CE_NF ='1';
	OVF <= sOVF when rising_edge(Clk) and CE_OVF ='1';
	ZF <= sZF when rising_edge(Clk) and CE_ZF ='1';
	CF <= sCF;
	
	sCF <= sY(16) when rising_edge(Clk) and CE_CF ='1';
	sNF <= sY(15);
   sOVF <= '1' when (ALUOP ="000" and RdData1(15) ='1' and RdData2(15) = '1' and sY(15) = '0') or -- ADD
		            (ALUOP ="000" and RdData1(15) = '0' and RdData2(15) = '0' and sY(15) = '1') or	-- ADD
						(ALUOP ="001" and RdData1(15) = '0' and RdData2(15) = '1' and sY(15) = '1') or	-- SUB
						(ALUOP ="001" and RdData1(15) = '1' and RdData2(15) = '0' and sY(15) = '0') or	-- SUB
						(ALUOP ="100" and RdData2(15) = '0' and RdData1(15) = '1' and sY(15) = '1') or	-- SUBBR Wb, Ws, Wd
						(ALUOP ="100" and RdData2(15) = '1' and RdData1(15) = '0' and sY(15) = '0')		-- SUBBR Wb, Ws, Wd
						else '0';
						
	sY <= ('0'&OP1) + ('0'&OP2) when ALUOP = "000" else				 -- ADD
		   ('0'&OP1) - ('1'&OP2) when ALUOP = "001" else				 -- SUB
			('0'&OP1) and ('0'&OP2) when ALUOP = "010" else				 -- AND
			('0'&OP1) or ('0'&OP2) when ALUOP = "011" else				 -- IOR
			('0'&OP2) - ('1'&OP1) - (not sCF) when ALUOP = "100" else -- SUBBR Wb, Ws, Wd
			sCOM when ALUOP = "101" else										 -- COM Ws, Wd
			sSE when ALUOP = "110" else										 -- SE Ws, Wd
			('0'&OP2) xor ('0'&sMASK) when ALUOP = "111" else			 -- BTG Ws, #bit4
			(others => '0');
	
	sZF <= '1' when sY(15 downto 0) = x"0000" else '0';
	
end Behavioral;

