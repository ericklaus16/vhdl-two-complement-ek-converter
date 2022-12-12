library ieee; 
use ieee.std_logic_1164.all;

entity conversor is
    port(
        c2 : in  std_logic_vector(4 downto 0);
        erro : out std_logic;
        ek : out std_logic_vector(4 downto 0)
);
end entity;
architecture comutar of conversor is
begin
    ek(0) <= NOT(c2(0));
    ek(1) <= (c2(0) AND c2(1)) OR (NOT(c2(0)) AND NOT(c2(1)) AND NOT(c2(2))) OR (NOT(c2(0)) AND NOT(c2(1)) AND c2(2));
    ek(2) <= (NOT(c2(0)) AND NOT(c2(1)) AND NOT(c2(2))) OR (c2(1) AND c2(2)) OR (c2(0) AND (c2(2)));
    ek(3) <= (c2(1) AND c2(3)) OR (c2(2) AND c2(3)) OR (c2(0) AND c2(3)) OR (NOT(c2(0)) AND NOT(c2(1)) AND NOT(c2(2)) AND NOT(c2(3)));
    ek(4) <= c2(1) OR c2(2) OR (NOT(c2(1)) AND c2(3)) OR (c2(0) AND NOT(c2(1)) AND NOT(c2(3)));
    erro <= '1' when c2(4 downto 0) = "10000" else '0';
end architecture;
