
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:37:47 12/19/2022
-- Design Name:   PIPELINE
-- Module Name:   D:/c code/VHDL/project5/omar.vhd
-- Project Name:  project5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PIPELINE
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY omar_vhd IS
END omar_vhd;

ARCHITECTURE behavior OF omar_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT PIPELINE
	PORT(
		CLK : IN std_logic;       
		);
	END COMPONENT;

	--Inputs
	SIGNAL CLK :  std_logic := '0';

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: PIPELINE PORT MAP(
		CLK => CLK
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;
