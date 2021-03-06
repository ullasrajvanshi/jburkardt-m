function fx = p01_fx ( x )

%*****************************************************************************80
%
%% P01_FX evaluates sin ( x ) - x / 2.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    07 May 2011
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, real X(*), the point at which F is to be evaluated.
%
%    Output, real FX(*), the value of the function at X.
%
  fx = sin ( x ) - 0.5 * x;

  return
end
