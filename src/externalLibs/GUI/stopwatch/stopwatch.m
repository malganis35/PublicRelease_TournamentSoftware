% STOPWATCH  Displays elapsed time from keyboard or button inputs
%  STOPWATCH(TIME) Initializes the stopwatch with a time offset
%      TIME should be a real (positive or negative) scalar in units of seconds
%  STOPWATCH(CLK) Starts the stopwatch running in clock mode
%      CLK should be a 6 element vector in CLOCK format
% 
%    Controls:
%      Press the START button to begin the timer (or press any key except L, R, or X)
%          If the timer has already been activated, press the PAUSE button to
%            stop the timer (or press any key except L, R, or X)
%          If the timer has been paused, press the RESUME button to continue from
%            the paused time (or press any key except L, R, or X)
%          If the timer is in lap mode, press the RESUME button to continue as though
%            the lap time had not been activated (or press any key except L, R, or X)
%      Press the LAP button to view lap times (or press the L key)
%          The LAP button can be pressed successively to view mulitple laps
%      Press the RESET button to restore the timer (or press the R key)
%      Press the EXIT button to close the timer window (or press the X key)
% 
%    Example:
%      % start the stopwatch
%      stopwatch;
% 
%    Example:
%      % start the stopwatch with a positive offset
%      stopwatch(3598.765);
% 
%    Example:
%      % count down from one hour
%      stopwatch(-3600);
% 
%    Example:
%      % start the stopwatch with time already running
%      stopwatch(clock);
% 
%    Example:
%      % start the stopwatch with running time since the day began
%      time = clock;
%      time(4:6) = 0;
%      stopwatch(time);
% 
%    Example:
%      % count down the time until midnight
%      time = clock;
%      time(3:6) = [time(3)+1 0 0 0];
%      stopwatch(time);
% 
%  See also: clock, etime, binclock, circlock
% 
%  Author: Joseph Kirk
%  Email: jdkirk630@gmail.com
%  Release: 3.1
%  Release Date: 4/23/08
%
