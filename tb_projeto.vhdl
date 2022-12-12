library ieee;
use ieee.std_logic_1164.all;

entity tb_projeto is 
end entity;

architecture behavior of tb_projeto is
    component conversor is
        port(
            c2 : in  std_logic_vector(4 downto 0);
            erro : out std_logic;
            ek : out std_logic_vector(4 downto 0)
        );
    end component;
    
    component mux2x6 is
        port(
            c2 : in  std_logic_vector(4 downto 0);
            ek : in  std_logic_vector(4 downto 0);
            z : out std_logic_vector(4 downto 0);
            sel : in std_logic
        );
    end component;

    component demux2x6 is
        port(
            c0 : out  std_logic_vector(4 downto 0);
            c1 : out  std_logic_vector(4 downto 0);
            e : in std_logic_vector(4 downto 0);
            sel : in std_logic
        );
    end component;

    signal sc2: std_logic_vector(4 downto 0);
    signal sek: std_logic_vector(4 downto 0);
    signal serro : std_logic;

    signal sz : std_logic_vector(4 downto 0);
    signal ssel : std_logic;
    
    signal sc0 : std_logic_vector(4 downto 0);
    signal sc1 : std_logic_vector(4 downto 0);

begin
    --instancia
    u_conversor : conversor port map(sc2, serro, sek);
    u_mux2x6 : mux2x6 port map(sc2, sek, sz, ssel);
    u_demux2x6 : demux2x6 port map(sc0, sc1, sz, ssel);

    u_tb : process
    begin
        sc2 <= "00000";
        wait for 20 ns;

        sc2 <= "00001";
        wait for 20 ns;

        sc2 <= "00010";
        wait for 20 ns;

        sc2 <= "00011";
        wait for 20 ns;

        sc2 <= "00100";
        wait for 20 ns;

        sc2 <= "00101";
        wait for 20 ns;

        sc2 <= "00110";
        wait for 20 ns;

        sc2 <= "00111";
        wait for 20 ns;

        ssel <= '1';
        sc2 <= "01000";
        wait for 20 ns;

        sc2 <= "01001";
        wait for 20 ns;

        sc2 <= "01010";
        wait for 20 ns;

        sc2 <= "01011";
        wait for 20 ns;

        sc2 <= "01100";
        wait for 20 ns;

        sc2 <= "01101";
        wait for 20 ns;

        sc2 <= "01110";
        wait for 20 ns;

        sc2 <= "01111";
        wait for 20 ns;

        sc2 <= "10000";
        wait for 20 ns;
        wait;
    end process;
end architecture;
