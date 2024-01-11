library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all; 
entity my4to1mux_tb is
end my4to1mux_tb; 
architecture my4to1mux_tb_a of my4to1mux_tb is
    component my4to1mux
    port(
         a : in  std_logic;
         b : in  std_logic;
         c : in  std_logic;
         d : in  std_logic;
         s0 : in  std_logic;
         s1 : in  std_logic;
         y : out  std_logic
    );
    end component;
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';
   signal y : std_logic;
begin 
   uut: my4to1mux port map (a => a, b => b, c => c, d => d, s0 => s0, s1 => s1, y => y     );
   stim_proc: process
   begin
     wait for 100 ns; 
    a <= '1';
    b <= '0';
    c <= '1';
    d <= '0';       
    s0 <= '0'; 
    s1 <= '0';
    wait for 100 ns; 
    s0 <= '1'; s1 <= '0';
    wait for 100 ns; 
    s0 <= '0'; s1 <= '1';
    wait for 100 ns;   
    s0 <= '0'; s1 <= '1';  
    wait for 100 ns;   
    end process;
 end;
