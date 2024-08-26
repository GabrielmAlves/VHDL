library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Lab1 is
end entity;

architecture behavior of tb_Lab1 is
  -- Component declaration for the ALU (DUT - Device Under Test)
  component Lab1
    port (
      A, B: in std_logic_vector(31 downto 0);
      ALUCtl: in std_logic_vector(3 downto 0);
      R: out std_logic_vector(31 downto 0);
      Zero, Overflow: out std_logic
    );
  end component;

  -- Signals to connect to the DUT
  signal A_tb, B_tb: std_logic_vector(31 downto 0);
  signal ALUCtl_tb: std_logic_vector(3 downto 0);
  signal R_tb: std_logic_vector(31 downto 0);
  signal Zero_tb, Overflow_tb: std_logic;

begin
  -- Instantiation of the ALU (DUT)
  uut: Lab1
    port map (
      A => A_tb,
      B => B_tb,
      ALUCtl => ALUCtl_tb,
      R => R_tb,
      Zero => Zero_tb,
      Overflow => Overflow_tb
    );

  -- Test process
  process
  begin
    -- Test case 1: AND operation (A and B)
    A_tb <= "00000000000000000000000000000100";  -- 4 em decimal
    B_tb <= "00000000000000000000000000001000";  -- 8 em decimal
    ALUCtl_tb <= "0000";  -- AND operation
    wait for 10 ns;

    -- Test case 2: OR operation (A or B)
    A_tb <= "00000000000000000000000000010000";  -- 16 em decimal
    B_tb <= "00000000000000000000000000000001";  -- 1 em decimal
    ALUCtl_tb <= "0001";  -- OR operation
    wait for 10 ns;

    -- Test case 3: ADD operation (A + B)
    A_tb <= "00000000000000000000000000001000";  -- 8 em decimal
    B_tb <= "00000000000000000000000000000001";  -- 1 em decimal
    ALUCtl_tb <= "0010";  -- ADD operation
    wait for 10 ns;

    -- Test case 4: SUB operation (A - B)
    A_tb <= "00000000000000000000000000001000";  -- 8 em decimal
    B_tb <= "00000000000000000000000000000001";  -- 1 em decimal
    ALUCtl_tb <= "0110";  -- SUB operation
    wait for 10 ns;

    -- Test case 5: SLT operation (A < B)
    A_tb <= "00000000000000000000000000000001";  -- 1 em decimal
    B_tb <= "00000000000000000000000000000010";  -- 2 em decimal
    ALUCtl_tb <= "0111";  -- SLT operation
    wait for 10 ns;

    -- Test case 6: NOR operation (NOT (A OR B))
    A_tb <= "00000000000000000000000000001000";  -- 8 em decimal
    B_tb <= "00000000000000000000000000000100";  -- 4 em decimal
    ALUCtl_tb <= "1100";  -- NOR operation
    wait for 10 ns;

    -- Test case 7: Test for Zero output
    A_tb <= "00000000000000000000000000000000";  -- 0 em decimal
    B_tb <= "00000000000000000000000000000000";  -- 0 em decimal
    ALUCtl_tb <= "0010";  -- ADD operation
    wait for 10 ns;
	 
	 -- Test case 8: ADD operation (causing overflow)
	 A_tb <= "01111111111111111111111111111111";  -- 2147483647 (máximo valor positivo para 32 bits com sinal)
	 B_tb <= "00000000000000000000000000000001";  -- 1 em decimal
	 ALUCtl_tb <= "0010";  -- ADD operação
	 wait for 10 ns;

	-- Test case 9: SUB operation (causing overflow)
	 A_tb <= "10000000000000000000000000000000";  -- -2147483648 (mínimo valor negativo para 32 bits com sinal)
	 B_tb <= "00000000000000000000000000000001";  -- 1 em decimal
    ALUCtl_tb <= "0110";  -- SUB operação
    wait for 10 ns;

    -- Stop the simulation
    wait;
  end process;

end architecture;