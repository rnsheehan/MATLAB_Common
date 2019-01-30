function v = Convert_mW_dBm(mWvalue)
% Convert a mW value to dBm scale
% R. Sheehan 30 - 1 - 2019

if mWvalue > 1.0e-9
    v = 10 * log10(mWvalue); 
else
    v = -90; 
end

end