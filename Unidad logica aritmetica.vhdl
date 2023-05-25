library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
entity alu is
 Port ( ALUSel : in STD_LOGIC_VECTOR ( 2 downto 0);
 A : in STD_LOGIC_VECTOR (7 downto 0);
 B : in STD_LOGIC_VECTOR (7 downto 0);
 F : out STD_LOGIC_VECTOR (7 downto 0));
end alu;
architecture Behavioral of alu is
BEGIN
 PROCESS(ALUSel, A, B)
 BEGIN
 CASE ALUSel IS
 WHEN "000" => -- PASA A TRAVÉS DE A
 F <= A;
 WHEN "001" => --REALIZA: A AND B
 F <= A AND B;
 WHEN "010" => --REAIZA: A OR B
 F <= A OR B;
 WHEN "011" => --REALIZA: A NOT
 F <= NOT A;
 WHEN "100" => -- SUMA DE A + B
 F <= A + B;
 WHEN "101" => -- RESTA DE A - B
 F <= A - B;
 WHEN "110" => -- INCREMENTO DE 1 
 F <= A + 1;
 WHEN others => --DECREMENTO DE 1
 F <= A - 1;
 END CASE;
 END PROCESS;
END Behavioral;

--Este código describe una Unidad Aritmético Lógica (ALU) en VHDL (lenguaje de descripción de hardware).

--La entidad "alu" declara los puertos de entrada y salida de la ALU.

-- El puerto de entrada "ALUSel" es un vector de tipo STD_LOGIC de longitud 3 (2 downto 0), que se utiliza para seleccionar una operación aritmética o lógica específica.
--Los puertos de entrada "A" y "B" son vectores de tipo STD_LOGIC de longitud 8 (7 downto 0), que representan los operandos de la ALU.
-- El puerto de salida "F" es un vector de tipo STD_LOGIC de longitud 8 (7 downto 0), que representa el resultado de la operación seleccionada.

--La arquitectura "Behavioral" implementa el comportamiento de la ALU.

-- El proceso contiene una sensibilidad a los cambios en las señales "ALUSel", "A" y "B". Esto significa que cuando alguna de estas señales cambie de valor, el proceso se ejecutará.
-- Dentro del proceso, se utiliza la sentencia CASE para seleccionar la operación aritmética o lógica correspondiente según el valor de "ALUSel".
-- Si "ALUSel" es "000", se realiza una operación de passthrough y se asigna el valor de "A" a la salida "F".
-- Si "ALUSel" es "001", se realiza una operación lógica AND entre "A" y "B" y se asigna el resultado a la salida "F".
-- Si "ALUSel" es "010", se realiza una operación lógica OR entre "A" y "B" y se asigna el resultado a la salida "F".
-- Si "ALUSel" es "011", se realiza una operación lógica NOT en "A" y se asigna el resultado a la salida "F".
-- Si "ALUSel" es "100", se realiza una operación aritmética de suma entre "A" y "B" y se asigna el resultado a la salida "F".
-- Si "ALUSel" es "101", se realiza una operación aritmética de resta entre "A" y "B" y se asigna el resultado a la salida "F".
-- Si "ALUSel" es "110", se realiza un incremento de 1 en "A" y se asigna el resultado a la salida "F".
-- Si "ALUSel" tiene cualquier otro valor, se realiza un decremento de 1 en "A" y se asigna el resultado a la salida "F".

--En resumen, este código describe una ALU que realiza varias operaciones aritméticas y lógicas entre dos operandos "A" y "B", según el valor del selector "ALUSel", y el resultado se asigna a la salida "F".