%  html_table writes a cell-array to an html file for display via html browsers.  
% 
%  INPUTS:
%  s is an optional output argument if a string of the html code is required.  
%  table_cell is a 2D cell array of the table contents. This should include the row and column headers if they are needed. 
%  fname is a string for the file name, e.g. 'test_html_table.html'
%  Other options can be added as param-value pairs as listed in the code (esp for formatting the table). 
% 
%  EXAMPLE:
%      colheads = {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Year'};
%      rowheads = {'Yield Budget'; 'Yield Actual'; 'Likely EOM'; 'Yield Variance'};
%      data = rand(4,12) * 2000 - 600;
%      data(:,end+1) = sum(data,2);
%      table_cell = [[{'Period'};rowheads] [colheads; num2cell(data)]]; %Add row and col heading cell-arrays onto a double data matrix
%      caption_str = 'Test of HTML Table Output';
%      html_table(table_cell, 'test_html_table.html', 'Caption',caption_str, ...
%          'DataFormatStr','%1.0f', 'BackgroundColor','#EFFFFF', 'RowBGColour',{'#000099',[],[],[],'#FFFFCC'}, 'RowFontColour',{'#FFFFB5'}, ...
%          'FirstRowIsHeading',1, 'FirstColIsHeading',1, 'NegativeCellFontColour','red');
% 
%  Note re colours: These can be specified as text strings of either: 
%    a) One of the html 16 color names, e.g. 'black' 
%    b) Hexadecimal, e.g. '#CCFFFF' ref: http://www.quackit.com/html/html_color_codes.cfm for colour charts.  
%    c) RGB, e.g. 'rgb(100,255,100)'
% 
%  AUTHOR: Roger Parkyn, roger.parkyn@hydro.com.au
%
