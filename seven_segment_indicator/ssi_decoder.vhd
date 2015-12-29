-- Copyright (C) 2015 EE2CS <http://ee2cs.com>
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

library ieee;
use ieee.std_logic_1164.all;

entity ssi_decoder is
  port (
         a: in std_logic_vector(4 - 1 downto 0);
         y: out std_logic_vector(7 - 1 downto 0)
       );
end ssi_decoder;

architecture rtl of ssi_decoder is
begin
  with a select y <=
  "0111111" when "0000",
  "0000110" when "0001",
  "1011011" when "0010",
  "1001111" when "0011",
  "1100110" when "0100",
  "1101101" when "0101",
  "1111101" when "0110",
  "0000111" when "0111",
  "1111111" when "1000",
  "1101111" when others;
end rtl;
