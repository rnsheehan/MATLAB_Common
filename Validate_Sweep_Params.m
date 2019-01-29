function v = Validate_Sweep_Params(start, stop, increment)
% assuming a parameter sweep from start to stop in units of increment
% check that stop > start and that increment < (stop - start)
% also return the number of steps for good measure
% Returns array of the form [True || False, Nsteps]
% R. Sheehan 29 - 1 - 2018

delta = max(stop, start) - min(stop, start);

if increment < delta
    Nsteps = delta / (increment - 1);
    v = [True, Nsteps];
else
    v = [False, -1];
end

end

