
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_gate is

Port 
(
A,B : in std_logic; -- using single bit input
C: out std_logic
);
end entity;

architecture beh of AND_gate is 

begin
C <= A and B;

end beh;
