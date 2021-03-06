
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
-- $Id: tc838.vhd,v 1.2 2001-10-26 16:30:28 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

entity c01s03b01x00p02n01i00838ent_a is
end c01s03b01x00p02n01i00838ent_a;

architecture c01s03b01x00p02n01i00838arch_a of c01s03b01x00p02n01i00838ent_a is
begin
  AC_BLK : block
    signal B : BIT;
  begin
    B <= '1';
  end block;
end;

ENTITY c01s03b01x00p02n01i00838ent IS
END c01s03b01x00p02n01i00838ent;

ARCHITECTURE c01s03b01x00p02n01i00838arch OF c01s03b01x00p02n01i00838ent IS

BEGIN
  A_BLK : block
    component C
    end component;
  begin
    L1 : C;
    L2 : C;
    L3 : C;
  end block;

  TESTING: PROCESS
  BEGIN
    assert FALSE 
      report "***FAILED TEST: c01s03b01x00p02n01i00838 - Missing semicolon." 
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c01s03b01x00p02n01i00838arch;

configuration c01s03b01x00p02n01i00838cfg of c01s03b01x00p02n01i00838ent  is
  for c01s03b01x00p02n01i00838arch
    for A_BLK
      for L1 : C
        use entity work.c01s03b01x00p02n01i00838ent_a (c01s03b01x00p02n01i00838arch_a) ;
      end for;
      
      for L2 : C
        use entity work.c01s03b01x00p02n01i00838ent_a (c01s03b01x00p02n01i00838arch_a) ;
      end for;
      
      for L3 : C
        use entity work.c01s03b01x00p02n01i00838ent_a (c01s03b01x00p02n01i00838arch_a) ;
      end for            --- Failure_here
    end for;
  end for;
end c01s03b01x00p02n01i00838cfg;
