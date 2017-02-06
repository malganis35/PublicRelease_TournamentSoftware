%  SEND_MSG sends email or text messages to cell phones or other mobile devices
%     assuming that you are sending from a Gmail account.
%     Text messaging is currently supported only within the US.
%  
%     RECIPIENTS is a cell array indicating the emails or phone where you 
%     wish to send the message to
%     Phone numbers can be 10-digit numbers in the format 
%     xxxxxxxxxx or xxx-xxx-xxxx or (xxx)-xxx-xxxx
%     
%     SUBJECT is a string representing the subject of the message
%  
%     MESSAGE is a string representing the body of the message
%  
%     CARRIER is your cell phone service provider, which can be one of the
%     following: 'Alltel', 'AT&T', 'Boost', 'Cingular', 'Cingular2',
%     'Cricket', 'MetroPCS', 'Nextel', 'Sprint', 'T-Mobile', 'TracFone', 
%     'USCellular', 'Verizon', or 'Virgin'. 
%     (Optional argument) If no phone numbers are provided, it does not have
%     to be specified
%  
%     EXAMPLE:
%       recipients = {'imag_email1@gmail.com', 0000000000, 'imag_email2@yahoo.com', '1111111111', '222-222-2222', '(333)-333-3333'};
%       subject    = 'Function has finished successfully';
%       message    = 'Now go out and have fun!';
%       carrier    = 'att';
%       send_msg(recipients, subject, message, carrier);
%  
%       Now if the four phone numbers above correspond to four different
%       carriers (for example, T-Mobile, Verizon, Sprint, AT&T in that order), 
%       send_msg should be called as
%       recipients = {'imag_email1@gmail.com', 0000000000, 'imag_email2@yahoo.com', '1111111111', '222-222-2222', '(333)-333-3333'};
%       subject    = 'Function has finished successfully';
%       message    = 'Now go out and have fun!';
%       carrier    = {'tmobile', 'verizon', 'sprint', 'att'};
%       send_msg(recipients, subject, message, carrier);
% 
%    See also SENDMAIL.
% 
%  You must modify the first two lines of the code (code inside the double 
%  lines) before using.
%  
%  You can also send from any other account asuming that you changed
%  accordingly line 145: setpref('Internet','SMTP_Server','smtp.gmail.com');
%  
%  and maybe line 155: props.setProperty('mail.smtp.socketFactory.port','465');
%  Other ports that might work in case 465 does not are: 25, 587, 995
%  E.g., 
%  props.setProperty('mail.smtp.socketFactory.port','25');
%  props.setProperty('mail.smtp.socketFactory.port','587');
%  props.setProperty('mail.smtp.socketFactory.port','995');
%  
%  In case this function produces an error when trying to send a message,
%  you might need to log into your Gmail account and loosen up the
%  restrictions on the ability of 3rd parties to send emails through your
%  Gmail account.
%  
%  Georgios Papachristoudis Oct. 2014
%  This function is an extension to the send_text_message by Ke Feng, Sept. 2007 
%  Matlab Central: 
%  <http://www.mathworks.com/matlabcentral/fileexchange/16649-send-text-message-to-cell-phone Send Text Message to Cell Phone>
%  Please send comments to: gio.fou@gmail.com
%  $Version: 1.0 $  $Date: 2014/10/17 11:46:52 $
%
