-- half_adder_tb.vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity myhalfadder_tb is
end myhalfadder_tb;

architecture myhalfadder_tb_a of myhalfadder_tb is
    component myhalfadder is
        Port (
            a, b: in std_logic;
            s: out std_logic;
            c: out std_logic
        );
    end component;

    signal a: std_logic := '0';
    signal b: std_logic := '0';
    signal s: std_logic;
    signal c: std_logic;
begin
    uut: myhalfadder port map(a => a, b => b, s => s, c => c);

    stim_proc: process
    begin
        wait for 10 ns;
        a <= '1';
        b <= '0';
        wait for 10 ns;
        a <= '0';
        b <= '1';
        wait for 10 ns;
        a <= '1';
        b <= '1';
        wait for 10 ns;
    end process;
end myhalfadder_tb_a;
