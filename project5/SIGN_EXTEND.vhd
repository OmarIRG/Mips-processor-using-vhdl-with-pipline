----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:13:45 12/20/2020 
-- Design Name: 
-- Module Name:    SIGN_EXTEND - Behavioral 
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

entity SIGN_EXTEND is
    Port ( INPUT : in  STD_LOGIC_VECTOR (15 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (31 downto 0));
end SIGN_EXTEND;

architecture Behavioral of SIGN_EXTEND is

signal s: std_logic_vector(31 downto 0):=x"00000000";
begin
process(INPUT)
begin
  if INPUT(15)<='0' then
     OUTPUT<= "0000000000000000" & INPUT;
	  elsif INPUT(15)<='1' then
     OUTPUT<= "1111111111111111" & INPUT;
   end if;
end process;
  OUTPUT<=s;



end Behavioral;

