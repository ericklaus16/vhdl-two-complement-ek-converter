library ieee; 
use ieee.std_logic_1164.all;

entity mux2x6 is
    port(
        c2 : in  std_logic_vector(4 downto 0);
        ek : in  std_logic_vector(4 downto 0);
        z : out std_logic_vector(4 downto 0);
        sel : in std_logic
    );
end entity;
architecture comutar of mux2x6 is
begin
    z <= c2 when sel = '0' else 
    ek when sel = '1' else "ZZZZZ";

end architecture;
