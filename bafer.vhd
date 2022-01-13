----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:26:44 05/28/2019 
-- Design Name: 
-- Module Name:    bafer - Behavioral 
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
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bafer is
PORT (
clk: in std_logic;
reset: in std_logic;
upisi: in std_logic;
podatak_in: in std_logic_vector(7 downto 0);
citaj: in std_logic;
podatak_out: out std_logic_vector(7 downto 0);
prazan: out std_logic;
pun: out std_logic;
error1: out std_logic;
error2: out std_logic
);

end bafer;

architecture Behavioral of bafer is
component kruzni
	port (
	clka: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(2 downto 0);
	dina: IN std_logic_VECTOR(7 downto 0);
	clkb: IN std_logic;
	addrb: IN std_logic_VECTOR(2 downto 0);
	doutb: OUT std_logic_VECTOR(7 downto 0));
end component;	
SIGNAL wea:std_logic_VECTOR(0 downto 0);
SIGNAL addra:std_logic_VECTOR(2 downto 0);
SIGNAL dina:std_logic_VECTOR(7 downto 0);
SIGNAL addrb:std_logic_VECTOR(2 downto 0);
SIGNAL pokazivac_upis: std_logic_VECTOR(2 DOWNTO 0); 
SIGNAL pokazivac_citanje: std_logic_VECTOR(2 DOWNTO 0); 
begin
kruzni1 :entity work.kruzni
		port map (
			clka => clk,
			wea => wea,
			addra => addra,
			dina => dina,
			clkb => clk,
			addrb => addrb,
			doutb => podatak_out);
process(reset, clk)

VARIABLE brojac: integer;
begin
if (clk'event and clk='1') then
	wea<="0";
	pun<='0';
	prazan<='0';	
	error1<='0';
	error2<='0';
	if (reset='1') then 
	brojac:=0;
		pokazivac_upis<="000";
		pokazivac_citanje<="000";
	else
			if (upisi='1' and citaj='0') then
				if (brojac=8) then 
					error1<='1';				
				else wea<="1"; 
					dina<=podatak_in;
					addra<=pokazivac_upis;
					pokazivac_upis<= pokazivac_upis + '1';
					brojac:=brojac+1;
				end if;
			elsif (upisi='0' and citaj='1') then
				if (brojac=0) then 
					error2<='1';
				else
					addrb<=pokazivac_citanje;
					pokazivac_citanje<= pokazivac_citanje + '1';
					brojac:=brojac-1;
				end if;
			elsif (upisi='1' and citaj='1') then
				if (brojac=0) then 
					error2<='1';
					
				else
					addrb<=pokazivac_citanje;
					pokazivac_citanje<= pokazivac_citanje + '1';
					brojac:=brojac-1;
				end if;
				wea<="1"; 
				dina<=podatak_in;
				addra<=pokazivac_upis;
				pokazivac_upis<= pokazivac_upis + '1';
				brojac:=brojac+1;
			end if;
			if(brojac=8) then pun<='1';
	elsif(brojac=0) then prazan<='1';
				end if;
			end if;
	
end if;

END PROCESS;


end Behavioral;

