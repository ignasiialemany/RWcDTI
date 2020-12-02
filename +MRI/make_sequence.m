function [sequence] = make_sequence(NT, dt_max, SeqName, varargin)
% make a sequence object from the given parameters
%   NT : number of time steps (target)
%   dt_max : maximum time step
%       (1, 2) = (dt_free, dt_grad) - in case of real sequence
%       scalar = dt - in case of dummy sequence
%   SeqName : sequence name {PGSE, MCSE/M2SE, STEAM}
%   varargin : parameters specific to the given sequence with SeqName

switch upper(SeqName)
    case 'PGSE'
        [Gmax, Delta, epsilon, delta] = deal(varargin{:});
        %TODO: do something
    case {'MCSE', 'M2SE'}
        [Gmax, epsilon, delta1, delta2] = deal(varargin{:});
        %TODO: do something
    case 'STEAM'
        [Gmax, Delta, epsilon, delta] = deal(varargin{:});
        %TODO: do something
    otherwise % dummy sequence
        dt = ones(1, NT)*dt_max(1);
        gG = zeros(1, NT);
end

sequence = MRI.ScanSequence(dt, gG);

end
