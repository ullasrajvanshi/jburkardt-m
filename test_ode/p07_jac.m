function jac = p07_jac ( neqn, t, y )

%*****************************************************************************80
%
%% P07_JAC evaluates the jacobian for problem p07.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    22 February 2013
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer NEQN, the number of equations.
%
%    Input, real T, Y(NEQN), the arguments of the jacobian.
%
%    Output, real JAC(NEQN,NEQN), the jacobian matrix.
%
  jac(1,1) = - 1.0;
  jac(1,2) = + 1.0;
  jac(1,3) =   0.0;

  jac(2,1) = + 1.0;
  jac(2,2) = - 2.0;
  jac(2,3) = + 1.0;

  jac(3,1) =   0.0;
  jac(3,2) = + 1.0;
  jac(3,3) = - 1.0;

  return
end
