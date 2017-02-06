%  XLSWRITE Stores numeric array or cell array in Excel workbook.
%    [SUCCESS,MESSAGE]=XLSWRITE(FILE,ARRAY,SHEET,RANGE) writes ARRAY to the Excel
%    workbook, FILE, into the area, RANGE in the worksheet specified in SHEET.
%    FILE and ARRAY must be specified. If either FILE or ARRAY is empty, an
%    error is thrown and XLSWRITE terminates. The first worksheet of the
%    workbook is the default. If SHEET does not exist, a new sheet is added at
%    the end of the worksheet collection. If SHEET is an index larger than the
%    number of worksheets, new sheets are appended until the number of worksheets
%    in the workbook equals SHEET. The size defined  by the  RANGE should fit the
%    size of ARRAY or contain only the first cell, e.g. 'A2'. If RANGE is larger
%    than the size of ARRAY, Excel will fill the remainder of the region with
%    #N/A. If RANGE is smaller than the size of ARRAY, only the sub-array that
%    fits into RANGE will be written to FILE. The success of the operation is
%    returned in SUCCESS and any accompanying message, in MESSAGE. On error,
%    MESSAGE shall be a struct, containing the error message and message ID.
%    See NOTE 1.
% 
%    To specify SHEET or RANGE, but not both, you can call XLSWRITE with
%    just three inputs. If the third input is a string that includes a colon 
%    character (e.g., 'D2:H4'), it specifies RANGE. If it is not (e.g., 
%    'SALES'), it specifies the worksheet to write to. See the next two 
%    syntaxes below.
% 
%    [SUCCESS,MESSAGE]=XLSWRITE(FILE,ARRAY,SHEET) writes ARRAY to the Excel
%    workbook, FILE, starting at cell A1 and using SHEET as described above.
% 
%    [SUCCESS,MESSAGE]=XLSWRITE(FILE,ARRAY,RANGE) writes ARRAY to the Excel
%    workbook, FILE, in the first worksheet and using RANGE as described above.
% 
%    [SUCCESS,MESSAGE]=XLSWRITE(FILE,ARRAY) writes ARRAY to the Excel
%    workbook, FILE, starting at cell A1 of the first worksheet. The return
%    values are as for the above example.
% 
%    XLSWRITE ARRAY FILE, is the command line version of the above example.
% 
%    INPUT PARAMETERS:
%        file:   string defining the workbook file to write to.
%                Default directory is pwd; default extension 'xls'.
%        array:  m x n numeric array or cell array.
%        sheet:  string defining worksheet name;
%                double, defining worksheet index.
%        range:  string defining data region in worksheet, using the Excel
%                'A1' notation.
% 
%    RETURN PARAMETERS:
%        SUCCESS: logical scalar.
%        MESSAGE: struct containing message field and message_id field.
% 
%    EXAMPLES:
% 
%    SUCCESS = XLSWRITE('c:\matlab\work\myworkbook.xls',A,'A2:C4') will write A to
%    the workbook file, myworkbook.xls, and attempt to fit the elements of A into
%    the rectangular worksheet region, A2:C4. On success, SUCCESS will contain true,
%    while on failure, SUCCESS will contain false.
% 
%    NOTE 1: The above functionality depends upon Excel as a COM server. In
%    absence of Excel, ARRAY shall be written as a text file in CSV format. In
%    this mode, the SHEET and RANGE arguments shall be ignored.
% 
%  See also XLSREAD, WK1WRITE, CSVWRITE.
% 
%
