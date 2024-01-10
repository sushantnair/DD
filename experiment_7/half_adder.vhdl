-- half_adder.vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity myhalfadder is
    Port (
        a, b: in std_logic;
        s: out std_logic;
        c: out std_logic
    );
end myhalfadder;

architecture myhalfadder_a of myhalfadder is
begin
    s <= a xor b;
    c <= a and b;
end myhalfadder_a;
