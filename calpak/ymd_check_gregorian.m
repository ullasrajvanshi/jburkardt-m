function [ y, m, d, ierror ] = ymd_check_gregorian ( y, m, d )

%*****************************************************************************80
%
%% YMD_CHECK_GREGORIAN checks a Gregorian YMD date.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    16 June 2012
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input/output, integer Y, M, D, the YMD date, which may
%    be corrected if necessary and possible.
%
%    Output, integer IERROR, is 0 if the date is legal.
%

%
%  Check the month.
%
  [ y, m, ierror ] = ym_check_gregorian ( y, m );

  if ( ierror ~= 0 )
    return
  end
%
%  Check the day.
%
  [ y, m, d ] = day_borrow_gregorian ( y, m, d );

  [ y, m, d ] = day_carry_gregorian ( y, m, d );

  return
end
