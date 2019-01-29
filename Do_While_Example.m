do = true;
start = 'Options:\n';
option1 = 'Set Temperature Input = 1\n'; 
option2 = 'Set LDD current Input = 2\n'; 
option3 = 'ReSet LDD current to zero Input = 3\n';
option5 = 'Perform Current Sweep Input = 4\n';
option4 = 'End program Input = -1\n';
message = 'Input: ';
newline = '\n';
prompt = strcat(newline, start, option1, option2, option3, option5, option4, newline, message);
while do
    x = input(prompt);
    if x == -1
        disp('End loop');
        do = false;
    elseif x == 1
        y = input('Desired Temperature Value: ');
        disp(['New temperature value: ', num2str(y)]);
    elseif x == 2
        y = input('Desired Current Value: ');
        disp(['New Current Value: ', num2str(y)]);
    elseif x == 3
        disp('Reset LDD Current to Zero');
    elseif x == 4
        disp('Power Sweep\n');
        Is = input('Input Current Start: ');
        If = input('Input Current End: ');
        Iinc= input('Input Current increment: ');
    else
        x = input(prompt);
    end
end