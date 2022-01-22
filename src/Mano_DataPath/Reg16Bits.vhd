----------------------------------------------------------------------------------
-- Company:			Amirkabir University of Technology
-- Engineer: 		MohammadReza Babaei Mosleh
-- 
-- Design Name: 
-- Module Name:    Reg16Bits - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Reg16Bits is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           LD : in  STD_LOGIC;
           Inc : in  STD_LOGIC;
			  
           Din : in  STD_LOGIC_VECTOR (15 downto 0);
           Dout : out  STD_LOGIC_VECTOR (15 downto 0));
end Reg16Bits;

architecture Behavioral of Reg16Bits is
	signal Dout_sig: STD_LOGIC_VECTOR(15 downto 0);
begin
	Dout <= Dout_sig;
	
	process(Clk)
	begin
		if(Clk='1' and Clk'event) then
			if(Rst='1') then
				Dout_sig <= (others => '0');
			elsif(LD='1') then
				Dout_sig <= Din;
			elsif(Inc='1') then
				Dout_sig <= Dout_sig + 1;
			end if;
		end if;
	end process;
end Behavioral;

