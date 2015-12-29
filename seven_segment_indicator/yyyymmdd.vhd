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
use ieee.numeric_std.all;

library work;
use work.all;
use work.ssi_display_pkg.all;

entity yyyymmdd is
  generic(length: integer := 8);
end yyyymmdd;

architecture rtl of yyyymmdd is
  signal ssi_in: ssi_in_t(length - 1 downto 0);
  signal ssi_out: ssi_out_t(length - 1 downto 0);

begin
  I0: entity work.ssi_display
  generic map(length => length)
  port map(ssi_in => ssi_in, ssi_out => ssi_out);

  ssi_in(7) <= std_logic_vector(to_unsigned(1, 4)); -- Y
  ssi_in(6) <= std_logic_vector(to_unsigned(9, 4)); -- Y
  ssi_in(5) <= std_logic_vector(to_unsigned(7, 4)); -- Y
  ssi_in(4) <= std_logic_vector(to_unsigned(0, 4)); -- Y
  ssi_in(3) <= std_logic_vector(to_unsigned(0, 4)); -- M
  ssi_in(2) <= std_logic_vector(to_unsigned(1, 4)); -- M
  ssi_in(1) <= std_logic_vector(to_unsigned(0, 4)); -- D
  ssi_in(0) <= std_logic_vector(to_unsigned(1, 4)); -- D
end rtl;
