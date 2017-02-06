%  Check for updates and replace old files.
%  
%  
% USAGE
% -----
%  update_check(fpath)
%  old_files = update_check(fpath)
%  [old_files not_found] = update_check(fpath)
%  
%  [...] = update_check(fpath)
%  [...] = update_check(fpath, rec)
%  [...] = update_check(fpath, rec, crit)
%  [...] = update_check(fpath, rec, crit, ext)
%  [...] = update_check(fpath, rec, crit, ext, replace)
%  
%  
% INPUT
% -----
%  - FPATH  : parent folder to search for changes (the original files are
%    expected to be in the MATLAB search path)
%  - REC    : 1 (search for files recursively, i.e., include all FPATH
%    subfolders), 0 (only FPATH) [default: 0]
%  - CRIT   : criterion: 'time' (compare the modification date) or 'size'
%    (compare the file size) [default: 'time']
%  - EXT    : cell array containing the file extension [default: {'m' 'mat' 'fig'}]
%  - REPLACE: 1 (replace old files), 0 (don't replace) [default: 0]
%  
%  If any of the input variables is empty or missing, the default value will
%  be used.
%  
%  
% OUTPUT
% ------
%  - OLD_FILES: cell array with the name and path of the old files
%  - NOT_FOUND: cell array with the name and path of the files that were not
%    found in the search path
%  
%
