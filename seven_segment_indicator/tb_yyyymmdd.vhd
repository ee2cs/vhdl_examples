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

library work;
use work.all;

entity tb_yyyymmdd is
  end tb_yyyymmdd;

architecture rtl of tb_yyyymmdd is
  signal i_y3: std_logic_vector(4 - 1 downto 0);
  signal i_y2: std_logic_vector(4 - 1 downto 0);
  signal i_y1: std_logic_vector(4 - 1 downto 0);
  signal i_y0: std_logic_vector(4 - 1 downto 0);
  signal i_m1: std_logic_vector(4 - 1 downto 0);
  signal i_m0: std_logic_vector(4 - 1 downto 0);
  signal i_d1: std_logic_vector(4 - 1 downto 0);
  signal i_d0: std_logic_vector(4 - 1 downto 0);

  signal o_y3: std_logic_vector(7 - 1 downto 0);
  signal o_y2: std_logic_vector(7 - 1 downto 0);
  signal o_y1: std_logic_vector(7 - 1 downto 0);
  signal o_y0: std_logic_vector(7 - 1 downto 0);
  signal o_m1: std_logic_vector(7 - 1 downto 0);
  signal o_m0: std_logic_vector(7 - 1 downto 0);
  signal o_d1: std_logic_vector(7 - 1 downto 0);
  signal o_d0: std_logic_vector(7 - 1 downto 0);

begin
  I0: entity work.yyyymmdd
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

  i_y3 <= std_logic_vector(to_unsigned(1, 4)); -- Y
  i_y2 <= std_logic_vector(to_unsigned(9, 4)); -- Y
  i_y1 <= std_logic_vector(to_unsigned(7, 4)); -- Y
  i_y0 <= std_logic_vector(to_unsigned(0, 4)); -- Y
  i_m1 <= std_logic_vector(to_unsigned(0, 4)); -- M
  i_m0 <= std_logic_vector(to_unsigned(1, 4)); -- M
  i_d1 <= std_logic_vector(to_unsigned(0, 4)); -- D
  i_d0 <= std_logic_vector(to_unsigned(1, 4)); -- D
end rtl;
