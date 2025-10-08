----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/22/2025 10:58:38 PM
-- Design Name: 
-- Module Name: Debouncer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Debouncer is
port (
    clk       : in  std_logic;       -- Clock signal
    SignalIn  : in  std_logic_vector(4 downto 0);       -- Input signal (e.g., from a button)
    SignalOut : out std_logic_vector(4 downto 0)        -- Debounced output signal
);
end entity Debouncer;

architecture Behavioral of Debouncer is
    
    constant DEBOUNCE_PERIOD_0 : integer := 10800000;
    constant DEBOUNCE_PERIOD_1 : integer := 7500000; 
    constant DEBOUNCE_PERIOD_2 : integer := 10800000; 
    constant DEBOUNCE_PERIOD_3 : integer := 10800000; 
    constant DEBOUNCE_PERIOD_4 : integer := 5500000; 
    signal Counter0 : unsigned(31 downto 0) := (others => '0');
    signal Counter1 : unsigned(31 downto 0) := (others => '0'); 
    signal Counter2 : unsigned(31 downto 0) := (others => '0'); 
    signal Counter3 : unsigned(31 downto 0) := (others => '0'); 
    signal Counter4 : unsigned(31 downto 0) := (others => '0'); 
    signal TempIn : std_logic_vector(4 downto 0) := (others => '0'); 
    signal IsStable : std_logic_vector(4 downto 0) := (others => '0');   
    signal SignalIn_sync : std_logic_vector(4 downto 0) := (others => '0');

begin
    
    process(clk)
    begin
        if rising_edge(clk) then
            SignalIn_sync <= SignalIn;
        end if;
    end process;

    -- Debouncing process
    process(clk)
    begin
        if rising_edge(clk) then
            -- Button 0
            if SignalIn_sync(0) = '1' then
                if IsStable(0) = '0' then
                    if Counter0 < to_unsigned(DEBOUNCE_PERIOD_0, 32) then
                        Counter0 <= Counter0 + 1;
                    else
                        IsStable(0) <= '1';
                    end if;
                end if;
            else
                Counter0 <= (others => '0');
                IsStable(0) <= '0';
            end if;
            -- Button 1
            if SignalIn_sync(1) = '1' then
                if IsStable(1) = '0' then
                    if Counter1 < to_unsigned(DEBOUNCE_PERIOD_1, 32) then
                        Counter1 <= Counter1 + 1;
                    else
                        IsStable(1) <= '1';
                    end if;
                end if;
            else
                Counter1 <= (others => '0');
                IsStable(1) <= '0';
            end if;
            -- Button 2
            if SignalIn_sync(2) = '1' then
                if IsStable(2) = '0' then
                    if Counter2 < to_unsigned(DEBOUNCE_PERIOD_2, 32) then
                        Counter2 <= Counter2 + 1;
                    else
                        IsStable(2) <= '1';
                    end if;
                end if;
            else
                Counter2 <= (others => '0');
                IsStable(2) <= '0';
            end if;
            -- Button 3
            if SignalIn_sync(3) = '1' then
                if IsStable(3) = '0' then
                    if Counter3 < to_unsigned(DEBOUNCE_PERIOD_3, 32) then
                        Counter3 <= Counter3 + 1;
                    else
                        IsStable(3) <= '1';
                    end if;
                end if;
            else
                Counter3 <= (others => '0');
                IsStable(3) <= '0';
            end if;
            -- Button 4
            if SignalIn_sync(4) = '1' then
                if IsStable(4) = '0' then
                    if Counter4 < to_unsigned(DEBOUNCE_PERIOD_4, 32) then
                        Counter4 <= Counter4 + 1;
                    else
                        IsStable(4) <= '1';
                    end if;
                end if;
            else
                Counter4 <= (others => '0');
                IsStable(4) <= '0';
            end if;
        end if;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            for i in 0 to 4 loop
                if IsStable(i) = '1' then
                    TempIn(i) <= SignalIn_sync(i);
                end if;
            end loop;
        end if;
    end process;

    SignalOut <= TempIn;

end Behavioral;

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use ieee.numeric_std.all;

--entity debouncer is
--port (
--    clk       : in  std_logic;       -- Clock signal
--    SignalIn  : in  std_logic;       -- Input signal (e.g., from a button)
--    SignalOut : out std_logic        -- Debounced output signal
--);
--end entity debouncer;

--architecture Behavioral of debouncer is
    
--    constant DEBOUNCE_PERIOD : integer := 10800000; 
--    signal Counter : unsigned(31 downto 0) := (others => '0');  
--    signal TempIn : std_logic := '0'; 
--    signal IsStable : std_logic := '0';   
--    signal SignalIn_sync : std_logic := '0';

--begin
    
--    process(clk)
--    begin
--        if rising_edge(clk) then
--            SignalIn_sync <= SignalIn;
--        end if;
--    end process;

--    -- Debouncing process
--    process(clk)
--    begin
--        if rising_edge(clk) then
--            if SignalIn_sync = '1' then
--                if IsStable = '0' then
--                    if Counter < to_unsigned(DEBOUNCE_PERIOD, 32) then
--                        Counter <= Counter + 1;
--                    else
--                        IsStable <= '1';
--                    end if;
--                end if;
--            else
--                Counter <= (others => '0');
--                IsStable <= '0';
--            end if;
--        end if;
--    end process;

--    process(clk)
--    begin
--        if rising_edge(clk) then
--            if IsStable = '1' then
--                TempIn <= SignalIn_sync;
--            end if;
--        end if;
--    end process;

--    SignalOut <= TempIn;

--end Behavioral;
