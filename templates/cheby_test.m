function cheby_test ( )

%*****************************************************************************80
%
%% CHEBY_TEST tests CHEBY.
%
%  Modified:
%
%    27 March 2005
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'CHEBY_TEST:\n' );
  fprintf ( 1, '  CHEBY uses the Chebyshev\n' );
  fprintf ( 1, '  iterative method to approximate the solution \n' );
  fprintf ( 1, '  of a linear system A * x = b.\n' );

  n = 10;

  A = zeros ( n, n );

  for i = 1 : n
    A(i,i) = 2.0;
  end
  for i = 1 : n-1
    A(i,i+1) = -1;
  end
  for i = 2 : n
    A(i-1,i) = -1;
  end
  x = [ 1 : n ]';
  b = A * x;
  x = ones ( n, 1 );

  M = 2.0 * eye ( n );
  max_it = 10;
  tol = 0.0001;

  fprintf ( 1, '\n' );
  fprintf ( 1, '  For this example, the order of the system is N = %d\n', n );
  fprintf ( 1, '  The matrix A is the simple tridiagonal -1, 2, -1.\n' );
  fprintf ( 1, '  The correct solution is x = [ 1, 2, ..., n].\n' );
  fprintf ( 1, '  The right hand side b is determined by computing A * x.\n' );
  fprintf ( 1, '  The exact x is then replaced by a vector of all 1''s for\n' );
  fprintf ( 1, '  use as a starting guess.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Other parameters are set as follows:\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  The maximum number of steps is %d.\n', max_it );
  fprintf ( 1, '  The error tolerance is %f\n', tol );

  [ x, error_norm, iter, flag ] = cheby ( A, x, b, M, max_it, tol );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  The CHEBY routine has returned with FLAG = %d\n', flag );
  if ( flag == 0 )
    fprintf ( 1, '  This indicates that the iteration has converged.\n' );
  elseif ( flag == 1 ) 
    fprintf ( 1, '  This indicates that the iteration has NOT converged.\n' );
  elseif ( flag == -1 ) 
    fprintf ( 1, '  This indicates that the iteration broke down.\n' );
  end
  
  fprintf ( 1, '\n' );
  fprintf ( 1, '  The number of iterations taken was %d\n', iter );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  The L2 norm of the error per iteration:\n' );
  fprintf ( 1, '\n' );
  for i = 1 : iter
    fprintf ( 1, '  %4d  %f\n', i, error_norm(i) );
  end
  fprintf ( 1, '\n' );
  fprintf ( 1, '  The computed solution vector X:\n' );
  fprintf ( 1, '\n' );
  for i = 1 : n
    fprintf ( 1, '  %4d  %f\n', i, x(i) );
  end
  
  fprintf ( 1, '\n' );
  fprintf ( 1, 'CHEBY_TEST:\n' );
  fprintf ( 1, '  Normal end of execution.\n' );

  return
end
