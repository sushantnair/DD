-- full_adder.vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity myfulladder is
    Port (
        a, b, cin: in std_logic;
        s: out std_logic;
        cout: out std_logic
    );
end myfulladder;

architecture myfulladder_a of myfulladder is
begin
    s <= a xor b xor cin;
    cout <= (a and b) or (cin and a) or (cin and b);
end myfulladder_a;
