-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz is
  Port ( 
    clk_out : out STD_LOGIC;
    clk_pixel : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );

end clk_wiz;

architecture stub of clk_wiz is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
begin
end;
