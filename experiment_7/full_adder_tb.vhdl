-- full_adder_tb.vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity myfulladder_tb is
end myfulladder_tb;

architecture myfulladder_tb_a of myfulladder_tb is
    component myfulladder is
        Port (
            a, b, cin: in std_logic;
            s: out std_logic;
            cout: out std_logic
        );
    end component;

    signal a: std_logic := '0';
    signal b: std_logic := '0';
    signal cin: std_logic := '0';
    signal s: std_logic;
    signal cout: std_logic;
begin
    uut: myfulladder port map(a => a, b => b, s => s, cin => cin, cout => cout);

    stim_proc: process
    begin
        a <= '1';
        b <= '0';
        cin <= '0';
        wait for 10 ns;
        a <= '0';
        b <= '1';
        cin <= '0';
        wait for 10 ns;
        a <= '1';
        b <= '1';
        cin <= '0';
        wait for 10 ns;
        a <= '0';
        b <= '0';
        cin <= '1';
        wait for 10 ns;
        a <= '1';
        b <= '0';
        cin <= '1';
        wait for 10 ns;
        a <= '0';
        b <= '1';
        cin <= '1';
        wait for 10 ns;
        a <= '1';
        b <= '1';
        cin <= '1';
        wait for 10 ns;
    end process;
end myfulladder_tb_a;
