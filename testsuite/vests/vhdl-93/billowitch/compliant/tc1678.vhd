
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc1678.vhd,v 1.2 2001-10-26 16:29:42 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c09s01b00x00p08n01i01678ent IS
END c09s01b00x00p08n01i01678ent;

ARCHITECTURE c09s01b00x00p08n01i01678arch OF c09s01b00x00p08n01i01678ent IS
  signal   S2 : integer := 2;
BEGIN
  B: block
    generic (    G1 : INTEGER;
                 G2 : STRING);
    generic map (    G1 => 10, 
                     G2 => "Hi");
    port (      P1 : INTEGER);
    port map (   P1 => S2);
  begin
    assert NOT( G1 = 10 and G2 = "Hi" and P1 = 2 )
      report "***PASSED TEST: c09s01b00x00p08n01i01678"
      severity NOTE;
    assert ( G1 = 10 and G2 = "Hi" and P1 = 2 )
      report "***FAILED TEST: c09s01b00x00p08n01i01678 - Certain values do not be imported from the enclosing enviornment into the block."
      severity ERROR;
  end block;

END c09s01b00x00p08n01i01678arch;
