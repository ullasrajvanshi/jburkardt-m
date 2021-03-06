function quadrule_test10 ( )

%*****************************************************************************80
%
%% TEST10 tests JACOBI_EK_COMPUTE and SUM_SUB.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    19 October 2009
%
%  Author:
%
%    John Burkardt
%
  order_max = 10;

  nfunc = func_set ( 'COUNT', 'DUMMY' );

  a = -1.0;
  b =  1.0;

  nsub = 1;
  xlo = -1.0;
  xhi = +1.0;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST10\n' );
  fprintf ( 1, '  JACOBI_EK_COMPUTE sets up Gauss-Jacobi quadrature;\n' );
  fprintf ( 1, '  SUM_SUB carries it out.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  The integration interval is [%f, %f]\n', a, b );
  fprintf ( 1, '  Number of subintervals is %d\n', nsub );
  fprintf ( 1, '  Quadrature order will vary.\n' );
  fprintf ( 1, '  Integrand will vary.\n' );

  for k = 1 : 2

    if ( k == 1 )
      alpha = 0.0;
      beta = 0.0;
    elseif ( k == 2 )
      alpha = 1.0;
      beta = 0.0;
    end

    fprintf ( 1, '\n' );
    fprintf ( 1, '  ALPHA = %f\n', alpha );
    fprintf ( 1, '  BETA =  %f\n', beta );

    for ilo = 1 : 5 : nfunc

      ihi = min ( ilo + 4, nfunc );

      fprintf ( 1, '\n' );
      fprintf ( 1, '    ' );
      for i = ilo : ihi
        fprintf ( '%14s', fname(i) );
      end
      fprintf ( 1, '\n' );
      fprintf ( 1, '\n' );

      for norder = 1 : order_max

        fprintf ( 1, '  %2d', norder );

        for i = ilo : ihi
 
          func_set ( 'SET', i );

          [ xtab, weight ] = jacobi_ek_compute ( norder, alpha, beta );

          result(i) = sum_sub ( @func, a, b, nsub, norder, xlo, xhi, ...
            xtab, weight );

          fprintf ( 1, '  %12f', result(i) );

        end

        fprintf ( 1, '\n' );

      end

    end

  end

  return
end
