function i4cvv_print ( mn, a, m, roff, title )

%*****************************************************************************80
%
%% I4CVV_PRINT prints an I4CVV.
%
%  Discussion:
%
%    An I4CVV is a "vector of vectors" of I4's.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    04 December 2012
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer MN, the size of the cell array.
%
%    Input, integer A(MN), the cell array.
%
%    Input, integer M, the number of rows in the array.
%
%    Input, integer ROFF(M+1), the row offsets.
%
%    Input, string TITLE, a title.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, '%s\n', title );
  fprintf ( 1, '\n' );

  for i = 1 : m

    k1 = roff(i) + 1;
    k2 = roff(i+1);

    for klo = k1 : 10 : k2
      khi = min ( klo + 10 - 1, k2 );
      if ( klo == k1 )
        fprintf ( 1, '%5d  ' );
      else
        fprintf ( 1, '       ' );
      end
      for k = klo : khi
        fprintf ( 1, '%7d', a(k) );
      end
      fprintf ( 1, '\n' );
    end

  end

  return
end
