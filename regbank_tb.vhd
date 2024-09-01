-- Gabriel Morais Alves | RA: 20101838
-- Lucas Vieira Brito | RA: 20118154
-- Rafael Alves Dorta | RA: 20032256
-- Rafael Costa Nascimento | RA: 20015558


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity regbank_tb is
end entity regbank_tb;

architecture sim of regbank_tb is

component RegBank
	port (
	 clk: in std_logic;
    reset: in std_logic;
    rdAddr1: in std_logic_vector(4 downto 0);
    rdAddr2: in std_logic_vector(4 downto 0);
    wrAddr: in std_logic_vector(4 downto 0);
    wData: in std_logic_vector(31 downto 0);
    we: in std_logic;
    rdData1: out std_logic_vector(31 downto 0);
    rdData2: out std_logic_vector(31 downto 0)
		  );
end component;

-- sinais de teste
    signal clk: std_logic := '0';
    signal reset: std_logic := '0';
    signal rdAddr1: std_logic_vector(4 downto 0) := (others => '0');
    signal rdAddr2: std_logic_vector(4 downto 0) := (others => '0');
    signal wrAddr: std_logic_vector(4 downto 0) := (others => '0');
    signal wData: std_logic_vector(31 downto 0) := (others => '0');
    signal we: std_logic := '0';
    signal rdData1: std_logic_vector(31 downto 0);
    signal rdData2: std_logic_vector(31 downto 0);

begin

uut: RegBank
port map ( --mapeando as variáveis do componente com as variáveis de teste
    clk => clk,
    reset => reset,
    rdAddr1 => rdAddr1,
    rdAddr2 => rdAddr2,
    wrAddr => wrAddr,
    wData => wData,
    we => we,
    rdData1 => rdData1,
    rdData2 => rdData2
);

ciclo_clock: process -- período com 20 ns -> frequência de 50 mhz (convenção que encontrei)
    begin
        clk <= '0'; -- começa com 0 e a cada 10 ns muda para 1, dps ao contrário
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;
	 
	 comportamentos_banco: process
    begin
        reset <= '1'; -- os registradores do banco ficam zerados por 20 ns, dps isso volta ao normal e dá pra fazer as operações
        wait for 20 ns;
        reset <= '0';

        -- teste de escrita no registrador 1
        we <= '1'; -- escrita tá habilitada
        wrAddr <= "00001";  -- endereço do registrador que vai escrever (1)
        wData <= x"00000012"; -- escreve o dado 00000012 (18)
        wait for 20 ns;
        we <= '0'; --depois de 20 ns, não dá mais pra escrever

        -- teste de leitura do registrador 1
        rdAddr1 <= "00001"; -- vai ler o que tá nesse endereço (registrador 1)
        wait for 20 ns;

        -- teste de escrita no registrador 2 (mesma coisa do de cima)
        we <= '1';
        wrAddr <= "00010";  
        wData <= x"00000034"; 
        wait for 20 ns;
        we <= '0';

        -- teste de leitura de novo (coloquei pra ter um específico pros dois juntos)
        rdAddr1 <= "00001";
        rdAddr2 <= "00010";
        wait for 20 ns;

        -- teste de reset (1 deixa os registradores zerados e 0 fica normal)
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        wait;
    end process;

end architecture sim;