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

library work;
use work.all;
use work.ssi_display_pkg.all;

entity ssi_display is
  generic(length: integer := 1);
  port (
         ssi_in: in ssi_in_t(length - 1 downto 0);
         ssi_out: out ssi_out_t(length - 1 downto 0)
       );
end ssi_display;

architecture rtl of ssi_display is
begin
  SSID:
  for i in 0 to length - 1 generate
    IX: entity work.ssi_decoder port map(a => ssi_in(i), y => ssi_out(i));
  end generate SSID;
end rtl;
