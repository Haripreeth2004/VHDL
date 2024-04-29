entity TEMP_MUX is
port (Desired_Temp : in bit_vector (8 downto 0);
	  Current_Temp : in bit_vector (8 downto 0);
	  Temp_Select  : in bit;
	  Display_Temp : out bit_vector (8 downto 0));
end TEMP_MUX;

architecture RTL of TEMP_MUX is
begin
process(Desired_Temp,Current_Temp,Temp_Select)
begin 
	if Temp_Select = '0' then
		Display_Temp <= Desired_Temp;
	else 
		Display_Temp <= Current_Temp;
	end if;
end process;
end RTL;
