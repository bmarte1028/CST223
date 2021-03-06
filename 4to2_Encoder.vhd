library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity encoder4to2 is
 port(
 a : in STD_LOGIC_VECTOR(3 downto 0);
 b : out STD_LOGIC_VECTOR(1 downto 0)
);
end encoder4to2;
 
architecture bhv of encoder4to2 is
begin
 
b(0) <= a(1) or a(2);
b(1) <= a(1) or a(3);
end bhv;

