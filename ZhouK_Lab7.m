function ZhouK_Lab7(funcs, hist, h, num_steps, eps)

format shortG;

% -------- STEP 1: Use RK4 to obtain the first three data points --------

% In the code below:
%
% funcs is cell array containing the various dy/dt functions
%
% hist is the augmented state array. It starts out as a row vector. It is
% passed in with the starting values of t and each state variable, in the
% same order as the function handles in the g cell array. It will
% eventually contain all of the values of t and the state variables over
% time.
%
% h is the step size
N = length(funcs);
slopes = zeros(4,N);
for iter = 1:3
    state = hist(iter,:);
    for c = 1:N
        slopes(1,c) = funcs{c}(state);
    end
    state = hist(iter,:) + (h/2)*[1, slopes(1,:)];
    for c = 1:N
        slopes(2,c) = funcs{c}(state);
    end
    state = hist(iter,:) + (h/2)*[1, slopes(2,:)];
    for c = 1:N
        slopes(3,c) = funcs{c}(state);
    end
    state = hist(iter,:) + h*[1, slopes(3,:)];
    for c = 1:N
        slopes(4,c) = funcs{c}(state);
    end
    RK = (slopes(1,:) + 2*slopes(2,:) + 2*slopes(3,:) + slopes(4,:)) / 6;
    hist(iter+1,:) = hist(iter,:) + h*[1, RK];
end
% When this chunk is done, we should have three rows in the augmented state
% array, corresponding to our first three time points.

% ------------------------ STEP 2: Perform ABM ------------------------

% initialize function handle for the predictor
predictor = @(y,g2,g1,g0) y + (h*((23/12)*g2 - (4/3)*g1 + (5/12)*g0));

% initalize function handle for the predictor modifier
predictor_modifier = @(p,cm,p_prev) p + (0.9*(cm - p_prev));

% initialize function handle for the corrector
corrector = @(y,g3,g2,g1) y + (h*((5/12)*g3 + (2/3)*g2 - (1/12)*g1));

% intialize function handle for the corrector modifier
corrector_modifier = @(c,p) c - (0.1*(c - p));

for i=1:3

%    p = 
    
end
