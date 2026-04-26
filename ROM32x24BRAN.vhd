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
        x"808101", -- mov 0x1020, w1 ; INW0 = 7fff
        x"808112", -- mov 0x1022, w2 ; INW1 = 0001
        x"410182", -- add w2, w2, w3 ; 0002, N=0
        x"330002", -- bra N, STOP    ; no jump
        x"408202", -- add w1, w2, w4 ; 8000, N=1
        x"330001", -- bra N, END     ; jump to END
        x"37FFFF", -- bra STOP       ; infinite loop
        x"37FFF8", -- bra LOOP       ; return to start
        x"000100", -- 8
        x"000200", -- 9
        x"000400", -- 10
        x"000800", -- 11
        x"001000", -- 12
        x"002000", -- 13
        x"004000", -- 14
        x"008000", -- 15
        x"010000", -- 16
        x"020000", -- 17
        x"040000", -- 18
        x"080000", -- 19
        x"100000", -- 20
        x"200000", -- 21
        x"400000", -- 22
        x"800000", -- 23
        x"000000", -- 24
        x"000000", -- 25
        x"000000", -- 26
        x"000000", -- 27
        x"000000", -- 28
        x"000000", -- 29
        x"000000", -- 30
        x"000000"  -- 31
    );
	 
begin

    Data <= ROM(conv_integer(Addr));

end Behavioral;