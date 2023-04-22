library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity generate_ex is
--  Port ( );
end generate_ex;

architecture Behavioral of generate_ex is
    signal sig1 : std_logic_vector(3 downto 0) := "1100";
    signal sig2 : std_logic_vector(4 downto 0);
begin
    sig2(0) <= '1';
    loop_for : for i in 0 to 3 generate
        sig2(i+1) <= sig2(i) and sig1(i);
    end generate loop_for;

end Behavioral;
