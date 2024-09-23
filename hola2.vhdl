Library IEEE;
Use IEEE.STD_LOGIC_1164.all, IEEE.NUMERIC_STD.all;
entity ENCODER8 is
port (A: in std_logic_vector (7 downto 0);
 Y: out std_logic_vector (3 downto 0));
end entity ENCODER8;
architecture ARCH of ENCODER8 is
begin
process (A)
begin
 case A is when "00000001" => Y <= "0000";
 when "00000010" => Y <= "0001";
 when "00000100" => Y <= "0010";
when "00001000" => Y <= "0011";
when "00010000" => Y <= "0100";
when "00100000" => Y <= "0101";
 when "01000000" => Y <= "0110";
 when "10000000" => Y <= "0111";
when others => Y <= "1XXX";
 end case;
 end process;
end architecture ARCH; 