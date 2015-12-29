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
  port(
        i_y3: in std_logic_vector(4 - 1 downto 0);
        i_y2: in std_logic_vector(4 - 1 downto 0);
        i_y1: in std_logic_vector(4 - 1 downto 0);
        i_y0: in std_logic_vector(4 - 1 downto 0);
        i_m1: in std_logic_vector(4 - 1 downto 0);
        i_m0: in std_logic_vector(4 - 1 downto 0);
        i_d1: in std_logic_vector(4 - 1 downto 0);
        i_d0: in std_logic_vector(4 - 1 downto 0);

        o_y3: out std_logic_vector(7 - 1 downto 0);
        o_y2: out std_logic_vector(7 - 1 downto 0);
        o_y1: out std_logic_vector(7 - 1 downto 0);
        o_y0: out std_logic_vector(7 - 1 downto 0);
        o_m1: out std_logic_vector(7 - 1 downto 0);
        o_m0: out std_logic_vector(7 - 1 downto 0);
        o_d1: out std_logic_vector(7 - 1 downto 0);
        o_d0: out std_logic_vector(7 - 1 downto 0)
      );
end yyyymmdd;

architecture rtl of yyyymmdd is
begin
  I0: entity work.ssi_display
  generic map(length => length)
  port map(
  ssi_in(7) => i_y3,
  ssi_in(6) => i_y2,
  ssi_in(5) => i_y1,
  ssi_in(4) => i_y0,
  ssi_in(3) => i_m1,
  ssi_in(2) => i_m0,
  ssi_in(1) => i_d1,
  ssi_in(0) => i_d0,

  ssi_out(7) => o_y3,
  ssi_out(6) => o_y2,
  ssi_out(5) => o_y1,
  ssi_out(4) => o_y0,
  ssi_out(3) => o_m1,
  ssi_out(2) => o_m0,
  ssi_out(1) => o_d1,
  ssi_out(0) => o_d0);
end rtl;
