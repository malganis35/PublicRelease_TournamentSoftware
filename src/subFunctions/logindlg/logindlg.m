%  LOGINDLG   Dialog for visually secure login.
%    Examples:
%        [login password] = logindlg('Title','Login Title');  % Returns the login and
%           password with the dialog title 'Login Title'.
% 
%        password = logindlg;  % Returns only the password with a default
%           dialog title.
% 
%        password = logindlg('Password','only');  % Displays only a password
%           edit box and returns the password.
% 
%        password = logindlg('Title','Login Title','Password','only');
%           % Creates a password only dialog with 'Login Title' as the
%           dialog title.
% 
% 
% 
% 
%  Author: Jeremy Smith
%  Date: September 24, 2005
%  Last Edit: January 28, 2010
%  Version: 1.3
%  Tested on: Matlab 7.0.4.365 (R14) Service Pack 2, Matlab 7.1 SP 3, and
%        Matlab 7.4.0.287 (R2007a)
%  Description: custom login dialog because Matlab doesn't have an option
%        for characters in an edit field to be replaced by asterisks
%        (password security).
% 
%        Note:  On very slow computers the first few password characters may 
%        have a delay before they are converted to asterisks.
%
