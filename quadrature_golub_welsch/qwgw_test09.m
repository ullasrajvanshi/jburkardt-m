function qwgw_test09 ( )

%*****************************************************************************80
%
%% TEST09 tests QWGW for the Legendre weight.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    23 February 2014
%
%  Author:
%
%    John Burkardt
%

%
%  Set the quadrature interval and number of points.
%
  a = -1.0;
  b = +1.0;
  n = 5;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST09:\n' );
  fprintf ( 1, '  Compute points and weights for Gauss quadrature\n' );
  fprintf ( 1, '  with the Legendre weight w(x) = 1.\n' );
  fprintf ( 1, '  Order N = %d\n', n );
  fprintf ( 1, '  Interval = [%g,%g]\n', a, b );
%
%  Set the recursion coefficients.
%
  aj = zeros ( n, 1 );
  bj = zeros ( n, 1 );

  aj(1:n) = 0.0;

  for j = 1 : n - 1
    bj(j) = ( j * j ) / ( 4 * j * j - 1 );
  end
  bj(n) = 0.0;

  bj(1:n) = sqrt ( bj(1:n) );

  mu0 = 2.0;
%
%  Compute the points and weights.
%
  [ x, w ] = sgqf ( n, aj, bj, mu0 );

  r8vec_print ( n, x, '  Abscissas:' );
  r8vec_print ( n, w, '  Weights:' );

  return
end
