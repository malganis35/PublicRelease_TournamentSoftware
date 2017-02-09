% USER_STRING  Get/set a user specific string
% 
%  Examples:
%    string = user_string(string_name)
%    saved = user_string(string_name, new_string)
% 
%  Function to get and set a string in a system or user specific file. This
%  enables, for example, system specific paths to binaries to be saved.
% 
%  IN:
%    string_name - String containing the name of the string required. The
%                  string is extracted from a file called (string_name).txt,
%                  stored in the same directory as user_string.m.
%    new_string - The new string to be saved under the name given by
%                 string_name.
% 
%  OUT:
%    string - The currently saved string. Default: ''.
%    saved - Boolean indicating whether the save was succesful
%
