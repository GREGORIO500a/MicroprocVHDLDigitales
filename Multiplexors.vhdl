library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux2 is
 Port ( S : in STD_LOGIC;
 D0 : in STD_LOGIC_VECTOR (7 
downto 0);
 D1 : in STD_LOGIC_VECTOR (7 
downto 0);
 Y : out STD_LOGIC_VECTOR (7 
downto 0));
end mux2;
architecture Behavioral of mux2 is
 BEGIN
 PROCESS(S, D1, D0)
 BEGIN
 IF(S = '0' )THEN
 Y <= D0;
 ELSE
 Y <= D1;
END IF;
END PROCESS;
END Behavioral;

--Este código describe un multiplexor de 2 entradas y 1 salida en VHDL (lenguaje de descripción de hardware).

--La entidad "mux2" declara los puertos de entrada y salida del multiplexor. 

--El puerto de entrada "S" es una señal de tipo STD_LOGIC que se utiliza como selector para elegir una de las dos entradas.
-- Los puertos de entrada "D0" y "D1" son vectores de tipo STD_LOGIC de longitud 8 (7 downto 0), que representan las dos posibles entradas de datos.
-- El puerto de salida "Y" es un vector de tipo STD_LOGIC de longitud 8 (7 downto 0), que representa la salida seleccionada por el multiplexor.

--La arquitectura "Behavioral" implementa el comportamiento del multiplexor. 

-- El proceso contiene una sensibilidad a los cambios en las señales "S", "D1" y "D0". Esto significa que cuando alguna de estas señales cambie de valor, el proceso se ejecutará.
-- Dentro del proceso, se verifica el valor de la señal de selección "S". Si es '0', se asigna el valor de "D0" a la salida "Y". Si es cualquier otro valor distinto de '0', se asigna el valor de "D1" a la salida "Y".
-- El proceso se ejecuta cada vez que hay un cambio en alguna de las señales sensibles, y actualiza la salida "Y" de acuerdo con el valor de "S".

--En resumen, este código describe un multiplexor de 2 a 1 que selecciona una de las dos entradas de datos en función del valor de la señal de selección "S", y la asigna a la salida "Y".