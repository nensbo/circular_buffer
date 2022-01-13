--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:32:34 05/29/2019
-- Design Name:   
-- Module Name:   C:/Users/HP EliteBook 840 G1/zad/testbench.vhd
-- Project Name:  zad
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bafer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testbench IS
END testbench;
 
ARCHITECTURE behavior OF testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bafer
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         upisi : IN  std_logic;
         podatak_in : IN  std_logic_vector(7 downto 0);
         citaj : IN  std_logic;
         podatak_out : OUT  std_logic_vector(7 downto 0);
         prazan : OUT  std_logic;
         pun : OUT  std_logic;
         error1 : OUT  std_logic;
         error2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal upisi : std_logic := '0';
   signal podatak_in : std_logic_vector(7 downto 0) := (others => '0');
   signal citaj : std_logic := '0';

 	--Outputs
   signal podatak_out : std_logic_vector(7 downto 0);
   signal prazan : std_logic;
   signal pun : std_logic;
   signal error1 : std_logic;
   signal error2 : std_logic;

   -- Clock period definitions
  -- constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bafer PORT MAP (
          clk => clk,
          reset => reset,
          upisi => upisi,
          podatak_in => podatak_in,
          citaj => citaj,
          podatak_out => podatak_out,
          prazan => prazan,
          pun => pun,
          error1 => error1,
          error2 => error2
        );

   -- Clock process definitions
----   clk_process :process
----   begin
----		clk <= '0';
----		wait for clk_period/2;
----		clk <= '1';
----		wait for clk_period/2;
----   end process;
PROCESS
	BEGIN
		--generisanje takta od 100MHz (perioda 10ns) - 5ns '1', i 5ns '0'
		loop
			clk<='0';
			wait for 5ns;
			clk<='1';
			wait for 5ns;
		end loop;
END PROCESS;
   -- Stimulus process
stim_proc: process
   begin		
	reset<='1';
	wait for 15ns;
	loop
	reset<='0';
	wait for 500ns;
	end loop;

end process;

process(clk,reset)
variable br: integer;
begin
if (clk'event and clk='1') then
	if(reset='1') then
	br:=0;
	podatak_in<="00000000";
	else
	br:=br+1;
	podatak_in<=podatak_in+'1';
	end if;
	if(br>=2 and br<=11)then
		upisi<='1';
	else upisi<='0';
	end if;
	if(br>=11 and br<=20) then
		citaj<='1';
	else citaj<='0';
	end if;
end if;
end process;

END;
