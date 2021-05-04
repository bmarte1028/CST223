LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY bitAdder IS
    PORT (a: IN STD_LOGIC;
      b: IN STD_LOGIC;
      cin: IN STD_LOGIC;
      add_sub : IN STD_LOGIC;
      y: OUT STD_LOGIC;
      cout: OUT STD_LOGIC);
END bitAdder;

ARCHITECTURE behavior OF bitAdder IS
signal b_sub : STD_LOGIC := '1';
BEGIN
    process(a, b, cin, add_sub)
    begin
        if (add_sub = '0') then
            b_sub <= (not b);
            y <= (a XOR b_sub) XOR cin;
            cout <= (a AND b_sub) OR (b_sub AND cin) OR (a AND cin);
        else
            y <= (a XOR b) XOR cin;
            cout <= (a AND b) OR (b AND cin) or (a AND cin);
        end if;
    end process;
END behavior;
