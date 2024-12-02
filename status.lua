                if IR2_SEL ='1' then
                    if (GRY_MODE_i = '1') then -- GRY MODE
                        status_i <= status_i(3) & status_i(6 downto 4) & "000";      -- G+ir2+ir1+qir 
                    else
                        status_i <= '0' & status_i(0) & status_i(5 downto 1);        --   ir2+ir1+qir+R+G+B   
                    end if;
                else
                    if (GRY_MODE_i = '1') then -- GRY MODE
                        status_i <= status_i(3) & '0' & status_i(5 downto 4) & "000";  -- G+ir1+qir 
                    else
                        status_i <= '0' & '0' & status_i(0) & status_i(4 downto 1);    -- ir1+qir+R+G+B   
                    end if;
                end if;  