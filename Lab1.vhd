library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab1 is
  port (
    A, B: in std_logic_vector(31 downto 0);
    ALUCtl: in std_logic_vector(3 downto 0);
    R: out std_logic_vector(31 downto 0);
    Zero, Overflow, Cout: out std_logic
  );
end entity;

architecture ALU of Lab1 is
  signal R_int: std_logic_vector(31 downto 0); -- Sinal interno para armazenar o resultado temporário
  signal temp_result: unsigned(32 downto 0); -- Sinal para armazenar o resultado temporário com 33 bits
begin
  process(A, B, ALUCtl)
  begin
    -- Inicializa sinais de saída
    Cout <= '0';
    Overflow <= '0';
    
    case ALUCtl is
      when "0000" =>
        R_int <= A AND B;
      when "0001" =>
        R_int <= A OR B;
      when "0010" => -- ADD operation
        temp_result <= ("0" & unsigned(A)) + ("0" & unsigned(B)); -- Use 33 bits to handle carry-out
        R_int <= std_logic_vector(temp_result(31 downto 0)); -- Assign lower 32 bits to R_int

        -- Calculate Carry-Out
        if temp_result(32) = '1' then
          Cout <= '1';
        end if;

        -- Calculate Overflow
        if (A(31) = B(31)) and (R_int(31) /= A(31)) then
          Overflow <= '1';
        end if;

      when "0110" => -- SUB operation
        R_int <= std_logic_vector(signed(A) - signed(B));
        Cout <= '0';
        Overflow <= '0';
        
        -- Calculate Overflow
        if (A(31) /= B(31)) and (R_int(31) /= A(31)) then
          Overflow <= '1';
        end if;

      when "0111" => -- SLT (set less than)
        if signed(A) < signed(B) then
          R_int <= (others => '0');
          R_int(0) <= '1';
        else
          R_int <= (others => '0');
        end if;

      when "1100" => -- NOR operation
        R_int <= not (A or B);

      when others =>
        R_int <= (others => 'X');
    end case;

    -- Set Zero flag
    Zero <= '0';
	 if R_int = std_logic_vector(to_unsigned(0, 32)) then
	 Zero <= '1';
	 end if;

    -- Atribui o valor do sinal interno à porta de saída
    R <= R_int;

  end process;
end architecture ALU;