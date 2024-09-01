-- Gabriel Morais Alves | RA: 20101838
-- Lucas Vieira Brito | RA: 20118154
-- Rafael Alves Dorta | RA: 20032256
-- Rafael Costa Nascimento | RA: 20015558

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity regbank_board is
	port (
		clk: in std_logic;
		reset: in std_logic;
		keys: in std_logic_vector(3 downto 0); -- botões da placa (tem 4 botões naquela brincadeira)
		switches: in std_logic_vector(17 downto 0); -- são as chaves da placa (recebe entrada de controle ou de dados, aí dá pra configurar endereço, dado de escrita e os krl. tem 18 na placa mas pode usar so 10)
	   leds_vermelhos: out std_logic_vector(17 downto 0);
		leds_verdes: out std_logic_vector(8 downto 0);
		hex0: out std_logic_vector(6 downto 0);    
      hex1: out std_logic_vector(6 downto 0);    
      hex2: out std_logic_vector(6 downto 0);    
      hex3: out std_logic_vector(6 downto 0);    
      hex4: out std_logic_vector(6 downto 0);    
      hex5: out std_logic_vector(6 downto 0)     -- os hex são os displays de 7 segmentos que dá pra mostrar números neles em decimal ou hexa
		);														 -- da pra mostrar o numero do registrador, o dado q foi armazenado la, etc
end entity regbank_board;


architecture Behavioral of regbank_board is
component RegBank
        port (
            clk      : in std_logic;
            reset    : in std_logic;
            rdAddr1  : in std_logic_vector(4 downto 0);   
            rdAddr2  : in std_logic_vector(4 downto 0);   
            wrAddr   : in std_logic_vector(4 downto 0);   
            wData    : in std_logic_vector(31 downto 0);  
            we       : in std_logic;                      
            rdData1  : out std_logic_vector(31 downto 0); 
            rdData2  : out std_logic_vector(31 downto 0)  
        );
end component;

begin

    -- mapeando o componente
    uut: RegBank
    port map (
        clk      => clk,
        reset    => reset,
        rdAddr1  => switches(4 downto 0),        -- registrador de leitura 1
        rdAddr2  => switches(9 downto 5),        -- registrador de leitura 2
        wrAddr   => switches(14 downto 10),      -- registrador de escrita
        wData    => wrData,                      -- dado de escrita
        we       => switches(15),                -- habilita escrita
        rdData1  => rdData1,                     -- dado q ta no reg1
        rdData2  => rdData2                      -- dado q ta no reg2
    );