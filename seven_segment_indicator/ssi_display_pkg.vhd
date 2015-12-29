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

package ssi_display_pkg is
  type ssi_in_t is array(natural range<>) of std_logic_vector(4 - 1 downto 0);
  type ssi_out_t is array(natural range<>) of std_logic_vector(7 - 1 downto 0);
end package;
