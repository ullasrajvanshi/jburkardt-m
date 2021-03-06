function marcus_test ( )

%*****************************************************************************80
%
%% MARCUS_TEST shows how to save and reload sets of data.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    14 June 2005
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'MARCUS_TEST\n' );
  fprintf ( 1, '  MATLAB version\n' );
  fprintf ( 1, '  Show how to save iterative data in files with\n' );
  fprintf ( 1, '  incremented names;\n' );
  fprintf ( 1, '  Show how to retrieve data by reading the files in\n' );
  fprintf ( 1, '  in reverse order.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  The routines we use are:\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  FILENAME_INC: increments a file name;\n' );
  fprintf ( 1, '  FILENAME_DEC: decrements a file name;\n' );

  filename = 'fred000.mat';

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Generate and save the data:\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '                I      X           Y           Z(1)        Z(2)\n' );
  fprintf ( 1, '\n' );

  for i = 1 : 10

    x = i;
    y = x * x;
    z = rand(2,1);

    filename = filename_inc ( filename );    

    fprintf ( 1, '  %s  %2d  %10f  %10f  %10f  %10f\n', filename, i, x, y, z(1), z(2) );
    
    save ( filename, 'x', 'y', 'z' );

  end

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Recover the data in reverse order:\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '                I      X           Y           Z(1)        Z(2)\n' );
  fprintf ( 1, '\n' );
 
  for i = 10 : -1 : 1

    load ( filename );

    fprintf ( 1, '  %s  %2d  %10f  %10f  %10f  %10f\n', filename, i, x, y, z(1), z(2) );

    filename = filename_dec ( filename );

  end

  return
end
