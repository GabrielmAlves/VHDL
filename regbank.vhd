-- Gabriel Morais Alves | RA: 20101838
-- Lucas Vieira Brito | RA: 20118154
-- Rafael Alves Dorta | RA: 20032256
-- Rafael Costa Nascimento | RA: 20015558



library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity RegBank is
	port (
		clk: in std_logic; -- clock
		reset: in std_logic; -- sinal de reset
		rdAddr1: in std_logic_vector(4 downto 0); -- registrador lido pela porta de leitura 1
		rdAddr2: in std_logic_vector(4 downto 0); -- registrador lido pela porta de leitura 2
		wrAddr: in std_logic_vector(4 downto 0); -- número do registrador de escrita
		wData: in std_logic_vector(31 downto 0); -- dado que vai ser escrito
		we: in std_logic; -- habilita escrita
		rdData1: out std_logic_vector(31 downto 0); -- dado lido pela porta de leitura 1
		rdData2: out std_logic_vector(31 downto 0) -- dado lido pela porta de leitura 2
	);
end entity RegBank;

architecture Behavioral of RegBank is
	type regArray is array (31 downto 0) of std_logic_vector(31 downto 0); -- array de registradores de 32 bits
	signal regfile: regArray := (others => (others => '0')); -- inicializa todos os registradores com 0
begin
	process(clk)
	begin
		if rising_edge(clk) then --inicializa o banco de registradores quando o reset é 1, pq aí fica ativado
			if reset = '1' then
				regfile <= (others => (others => '0')); -- todos os bits de todos os registradores foram preenchidos com zero
			elsif we = '1' then --sinal habilitado
				regfile(to_integer(unsigned(wrAddr))) <= wData; -- dado wData (entrada) vai ser escrito no registrador wrAddr
			end if;
		end if;
	end process;

	rdData1 <= regfile(to_integer(unsigned(rdAddr1))); -- rdData1 recebe o conteúdo do registrador que tá no endereço rdAddr1
	rdData2 <= regfile(to_integer(unsigned(rdAddr2))); -- rdData2 recebe o conteúdo do registrador que tá no endereço rdAddr2

end architecture Behavioral;