% Simple PID

% PID
Kp = 0.1; 
Ki = 0.0001;
Kd = 0.001; 

%Initialize and Set values
error = 0;                % error from set value
cont = 0;                 % controller output
pe = 0;                   % previous error
pro = 0;                  % error itself
der = 0;                  % derivative of error
int = 0;                  % integral of error
t = 0;                    % time taken
pt = 0;                   % previous time
tic                       % start timer


i=1;
while 1 
    
    % You code goes here
    % That is taking input from sensors and findind error to the set value
    % error = (give the value of error here)
    
    pe = error;
    
    %  Calculate the controller output
    t = toc - pt;
    pt = toc;
    pro = error;
    der = (error - pe)/t;
    int = ((error + pe)/2)*t;
    cont = (Kp*pro) + (Ki*int) + (Kd*der);
    
   
end



