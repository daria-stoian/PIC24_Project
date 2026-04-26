----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:   12:57:20 03/19/2025 
-- Design Name: ROM32x24
-- Module Name:   ROM32x24 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:   Read-Only Memory 32 locations x 24 bits
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM32x24 is
    Port ( Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           Data : out  STD_LOGIC_VECTOR (23 downto 0));
end ROM32x24;

architecture Behavioral of ROM32x24 is
    type tROM is array (0 to 31) of std_logic_vector ( 23 downto 0);
    
    constant ROM : tROM :=(
        --test
        x"808101", -- mov 0x1020, w1      ; INW0 =7FFF
        x"808112", -- mov 0x1022, w2      ; INW1 = FFFA
        x"4101E1", -- add w2,#1,w3
        x"188202", -- subbr w1, w2, w4
        x"198283", -- subbr w3,w3,w5
        x"190301", -- subbr w2,w1,w6
        x"310012", -- bra C,STOP
        x"4103E6", -- add w2, #6 ,w7
        x"190402", -- subbr w2,w2,w8	
        x"190481", -- subbr w2,w1,w9
        x"32000E", -- bra Z,STOP
        x"410567", -- add w2, #7 ,w10
        x"198583", -- subbr w3,w3,w11
        x"888121", -- mov w1, 0x1024
        x"888122", -- mov w2, 0x1024
        x"888123", -- mov w3, 0x1024
        x"888124", -- mov w4, 0x1024
        x"888125", -- mov w5, 0x1024
        x"888126", -- mov w6, 0x1024
        x"888127", -- mov w7, 0x1024
        x"888128", -- mov w8, 0x1024
        x"888129", -- mov w9, 0x1024
        x"88812A", -- mov w10, 0x1024
        x"88812B", -- mov w11, 0x1024
        x"370001", -- bra NEXT	;jump
        x"37FFFF", -- STOP:bra STOP
        x"37FFE5", -- NEXT:bra LOOP
        x"000000", -- 27
        x"000000", -- 28
        x"000000", -- 29
        x"000000", -- 30
        x"000000"  -- 31
    );
	 
begin

    Data <= ROM(conv_integer(Addr));

end Behavioral;