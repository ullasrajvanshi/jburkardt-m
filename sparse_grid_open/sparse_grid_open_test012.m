function sparse_grid_test012 ( dim_min, dim_max, level_max_min, ...
  level_max_max )

%*****************************************************************************80
%
%% TEST012 tests SPARSE_GRID_OWN_SIZE.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    12 January 2010
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer DIM_MIN, the minimum spatial dimension to consider.
%
%    Input, integer DIM_MAX, the maximum spatial dimension to consider.
%
%    Input, integer LEVEL_MAX_MIN, the minimum value of LEVEL_MAX to consider.
%
%    Input, integer LEVEL_MAX_MAX, the maximum value of LEVEL_MAX to consider.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST012\n' );
  fprintf ( 1, '  SPARSE_GRID_OWN_SIZE returns the number of\n' );
  fprintf ( 1, '  distinct points in a sparse grid made up of all \n' );
  fprintf ( 1, '  product grids formed from open weakly nested \n' );
  fprintf ( 1, '  quadrature rules.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  The sparse grid is the sum of all product grids\n' );
  fprintf ( 1, '  of order LEVEL, with\n' );
  fprintf ( 1, '    0 <= LEVEL <= LEVEL_MAX.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  LEVEL is the sum of the levels of the 1D rules,\n' );
  fprintf ( 1, '  the order of the 1D rule is 2^(LEVEL+1) - 1,\n' );
  fprintf ( 1, '  the region is [-1,1]^DIM_NUM.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  For this kind of rule, there is weak nesting,\n' );
  fprintf ( 1, '  that is, only a single point (0.0) is common to any\n' );
  fprintf ( 1, '  pair of rules.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '   DIM: ' );

  for dim_num = dim_min : dim_max
    fprintf ( 1, '  %10d', dim_num );
  end

  fprintf ( 1, '\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '   LEVEL_MAX\n' );
  fprintf ( 1, '\n' );

  for level_max = level_max_min : level_max_max
    fprintf ( 1, '    %4d', level_max );
    for dim_num = dim_min : dim_max
      point_num = sparse_grid_own_size ( dim_num, level_max );
      fprintf ( 1, '  %10d', point_num );
    end
    fprintf ( 1, '\n' );
  end

  return
end
