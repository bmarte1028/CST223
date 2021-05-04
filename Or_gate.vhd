library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_gate is

Port 
(
A : in std_logic_vector(1 downto 0); -- using single bit input
C: out std_logic
);
end entity;

architecture beh of OR_gate is 

begin
C <= A(0) or A(1);

end beh;

