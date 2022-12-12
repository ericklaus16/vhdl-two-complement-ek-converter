-- demultiplexador 2x6  
library ieee; 
use ieee.std_logic_1164.all;

entity demux2x6 is
    port(
        c0 : out std_logic_vector(4 downto 0);
        c1 : out std_logic_vector(4 downto 0);
        e : in std_logic_vector(4 downto 0);
        sel : in std_logic
    );
end entity;
architecture comutar of demux2x6 is
begin
    c0 <= e when sel = '0' else "ZZZZZ";
    c1 <= e when sel = '1' else "ZZZZZ";

end architecture;
