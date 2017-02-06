%  function h = plot_google_map(varargin)
%  Plots a google map on the current axes using the Google Static Maps API
% 
%  USAGE:
%  h = plot_google_map(Property, Value,...)
%  Plots the map on the given axes. Used also if no output is specified
% 
%  Or:
%  [lonVec latVec imag] = plot_google_map(Property, Value,...)
%  Returns the map without plotting it
% 
%  PROPERTIES:
%     Axis           - Axis handle. If not given, gca is used.
%     Height (640)   - Height of the image in pixels (max 640)
%     Width  (640)   - Width of the image in pixels (max 640)
%     Scale (2)      - (1/2) Resolution scale factor. Using Scale=2 will
%                      double the resulotion of the downloaded image (up
%                      to 1280x1280) and will result in finer rendering,
%                      but processing time will be longer.
%     Resize (1)     - (recommended 1-2) Resolution upsampling factor. 
%                      Increases image resolution using imresize(). This results
%                      in a finer image but it needs the image processing
%                      toolbox and processing time will be longer.
%     MapType        - ('roadmap') Type of map to return. Any of [roadmap, 
%                      satellite, terrain, hybrid]. See the Google Maps API for
%                      more information. 
%     Alpha (1)      - (0-1) Transparency level of the map (0 is fully
%                      transparent). While the map is always moved to the
%                      bottom of the plot (i.e. will not hide previously
%                      drawn items), this can be useful in order to increase
%                      readability if many colors are plotted 
%                      (using SCATTER for example).
%     ShowLabels (1) - (0/1) Controls whether to display city/street textual labels on the map
%     Style          - (string) A style configuration string. See:
%                      https://developers.google.com/maps/documentation/static-maps/?csw=1#StyledMaps
%                      http://instrument.github.io/styled-maps-wizard/
%     Language       - (string) A 2 letter ISO 639-1 language code for displaying labels in a 
%                      local language instead of English (where available).
%                      For example, for Chinese use:
%                      plot_google_map('language','zh')
%                      For the list of codes, see:
%                      http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
%     Marker         - The marker argument is a text string with fields
%                      conforming to the Google Maps API. The
%                      following are valid examples:
%                      '43.0738740,-70.713993' (default midsize orange marker)
%                      '43.0738740,-70.713993,blue' (midsize blue marker)
%                      '43.0738740,-70.713993,yellowa' (midsize yellow
%                      marker with label "A")
%                      '43.0738740,-70.713993,tinyredb' (tiny red marker
%                      with label "B")
%     Refresh (1)    - (0/1) defines whether to automatically refresh the
%                      map upon zoom/pan action on the figure.
%     AutoAxis (1)   - (0/1) defines whether to automatically adjust the axis
%                      of the plot to avoid the map being stretched.
%                      This will adjust the span to be correct
%                      according to the shape of the map axes.
%     FigureResizeUpdate (1) - (0/1) defines whether to automatically refresh the
%                      map upon resizing the figure. This will ensure map
%                      isn't stretched after figure resize.
%     APIKey         - (string) set your own API key which you obtained from Google: 
%                      http://developers.google.com/maps/documentation/staticmaps/#api_key
%                      This will enable up to 25,000 map requests per day, 
%                      compared to a few hundred requests without a key. 
%                      To set the key, use:
%                      plot_google_map('APIKey','SomeLongStringObtaindFromGoogle')
%                      You need to do this only once to set the key.
%                      To disable the use of a key, use:
%                      plot_google_map('APIKey','')
% 
%  OUTPUT:
%     h              - Handle to the plotted map
% 
%     lonVect        - Vector of Longidute coordinates (WGS84) of the image 
%     latVect        - Vector of Latidute coordinates (WGS84) of the image 
%     imag           - Image matrix (height,width,3) of the map
% 
%  EXAMPLE - plot a map showing some capitals in Europe:
%     lat = [48.8708   51.5188   41.9260   40.4312   52.523   37.982];
%     lon = [2.4131    -0.1300    12.4951   -3.6788    13.415   23.715];
%     plot(lon,lat,'.r','MarkerSize',20)
%     plot_google_map
% 
%  References:
%   http://www.mathworks.com/matlabcentral/fileexchange/24113
%   http://www.maptiler.org/google-maps-coordinates-tile-bounds-projection/
%   http://developers.google.com/maps/documentation/staticmaps/
% 
%  Acknowledgements:
%   Val Schmidt for his submission of get_google_map.m
% 
%  Author:
%   Zohar Bar-Yehuda
% 
%  Version 1.8 - 25/04/2016 - By Hannes Diethelm
%        - Add resize parameter to resize image using imresize()
%        - Fix scale parameter
%  Version 1.7 - 14/04/2016
%        - Add custom style support
%  Version 1.6 - 12/11/2015
%        - Use system temp folder for writing image files (with fallback to current dir if missing write permissions)
%  Version 1.5 - 20/11/2014
%        - Support for MATLAB R2014b
%        - several fixes for complex layouts: several maps in one figure, 
%          map inside a panel, specifying axis handle as input (thanks to Luke Plausin)
%  Version 1.4 - 25/03/2014
%        - Added the language parameter for showing labels in a local language
%        - Display the URL on error to allow easier debugging of API errors
%  Version 1.3 - 06/10/2013
%        - Improved functionality of AutoAxis, which now handles any shape of map axes. 
%          Now also updates the extent of the map if the figure is resized.
%        - Added the showLabels parameter which allows hiding the textual labels on the map.
%  Version 1.2 - 16/06/2012
%        - Support use of the "scale=2" parameter by default for finer rendering (set scale=1 if too slow).
%        - Auto-adjust axis extent so the map isn't stretched.
%        - Set and use an API key which enables a much higher usage volume per day.
%  Version 1.1 - 25/08/2011
%
