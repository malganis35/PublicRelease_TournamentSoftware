%  CSVIMPORT reads the specified CSV file and stores the contents in a cell array or matrix
% 
%  The file can contain any combination of text & numeric values. Output data format will vary
%  depending on the exact composition of the file data.
% 
%  CSVIMPORT( fileName ):         fileName     -  String specifying the CSV file to be read. Set to
%                                                 [] to interactively select the file.
% 
%  CSVIMPORT( fileName, ... ) : Specify a list of options to be applied when importing the CSV file.
%                               The possible options are:
%                                 delimiter     - String to be used as column delimiter. Default
%                                                 value is , (comma)
%                                 columns       - String or cell array of strings listing the columns
%                                                 from which data is to be extracted. If omitted data
%                                                 from all columns in the file is imported. If file
%                                                 does not contain a header row, the columns
%                                                 parameter can be a numeric array listing column
%                                                 indices from which data is to be extracted.
%                                 outputAsChar  - true / false value indicating whether the data
%                                                 should be output as characters. If set to false the
%                                                 function attempts to convert each column into a
%                                                 numeric array, it outputs the column as characters
%                                                 if conversion of any data element in the column
%                                                 fails. Default value is false.
%                                 uniformOutput - true / false value indicating whether output can be
%                                                 returned without encapsulation in a cell array.
%                                                 This parameter is ignored if the columns / table
%                                                 cannot be converted into a matrix.
%                                 noHeader      - true / false value indicating whether the CSV
%                                                 file's first line contains column headings. Default
%                                                 value is false.
%                                 ignoreWSpace  - true / false value indicating whether to ignore
%                                                 leading and trailing whitespace in the column
%                                                 headers; ignored if noHeader is set to true.
%                                                 Default value is false.
% 
%  The parameters must be specified in the form of param-value pairs, parameter names are not
%  case-sensitive and partial matching is supported.
% 
%  [C1 C2 C3] = CSVIMPORT( fileName, 'columns', {'C1', 'C2', C3'}, ... )
%    This form returns the data from columns in output variables C1, C2 and C3 respectively, the
%    column names are case-sensitive and must match a column name in the file exactly. When fetching
%    data in column mode the number of output columns must match the number of columns to read or it
%    must be one. In the latter case the data from the columns is returned as a single cell matrix.
% 
%  [C1 C2 C3] = CSVIMPORT( fileName, 'columns', [1, 3, 4], ,'noHeader', true, ... )
%    This form returns the data from columns in output variables C1, C2 and C3 respectively, the
%    columns parameter must contain the column indices when the 'noHeader' option is set to true.
%
