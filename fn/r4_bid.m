function value = r4_bid ( x )

%*****************************************************************************80
%
%% R4_BID evaluates the derivative of the Airy function Bi of an R4 argument.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    02 October 2011
%
%  Author:
%
%    Original FORTRAN77 version by Wayne Fullerton.
%    MATLAB version by John Burkardt.
%
%  Reference:
%
%    Wayne Fullerton,
%    Portable Special Function Routines,
%    in Portability of Numerical Software,
%    edited by Wayne Cowell,
%    Lecture Notes in Computer Science, Volume 57,
%    Springer 1977,
%    ISBN: 978-3-540-08446-4,
%    LC: QA297.W65.
%
%  Parameters:
%
%    Input, real X, the argument.
%
%    Output, real VALUE, the derivative of the Airy function Bi of X.
%
  persistent bif2cs
  persistent bifcs
  persistent big2cs
  persistent bigcs
  persistent nbif
  persistent nbif2
  persistent nbig
  persistent nbig2
  persistent x2sml
  persistent x3sml
  persistent xmax

  if ( isempty ( nbif ) )

    bif2cs = [ ...
       0.323493987603522033521E+00, ...
       0.086297871535563559139E+00, ...
       0.002994025552655397426E+00, ...
       0.000051430528364661637E+00, ...
       0.000000525840250036811E+00, ...
       0.000000003561751373958E+00, ...
       0.000000000017146864007E+00, ...
       0.000000000000061663520E+00, ...
       0.000000000000000171911E+00, ...
       0.000000000000000000382E+00 ]';
    bifcs = [ ...
       0.1153536790828570243E+00, ...
       0.0205007894049192875E+00, ...
       0.0002135290278902876E+00, ...
       0.0000010783960614677E+00, ...
       0.0000000032094708833E+00, ...
       0.0000000000062930407E+00, ...
       0.0000000000000087403E+00, ...
       0.0000000000000000090E+00 ]';
    big2cs = [ ...
       1.6062999463621294578E+00, ...
       0.7449088819876088652E+00, ...
       0.0470138738610277380E+00, ...
       0.0012284422062548239E+00, ...
       0.0000173222412256624E+00, ...
       0.0000001521901652368E+00, ...
       0.0000000009113560249E+00, ...
       0.0000000000039547918E+00, ...
       0.0000000000000130017E+00, ...
       0.0000000000000000335E+00 ]';
    bigcs = [ ...
      -0.097196440416443537390E+00, ...
       0.149503576843167066571E+00, ...
       0.003113525387121326042E+00, ...
       0.000024708570579821297E+00, ...
       0.000000102949627731379E+00, ...
       0.000000000263970373987E+00, ...
       0.000000000000458279271E+00, ...
       0.000000000000000574283E+00, ...
       0.000000000000000000544E+00 ]';

    eta = 0.1 * r4_mach ( 3 );
    nbif = r4_inits ( bifcs, 8, eta );
    nbig = r4_inits ( bigcs, 9, eta );
    nbif2 = r4_inits ( bif2cs, 10, eta );
    nbig2 = r4_inits ( big2cs, 10, eta );
    x2sml = sqrt ( eta );
    x3sml = eta^0.3333;
    xmax = ( 1.5 * log ( r4_mach ( 2 ) ) )^0.6666;

  end

  if ( x < - 1.0 )
    [ xn, phi ] = r4_admp ( x );
    value = xn * sin ( phi );
  elseif ( abs ( x ) <= x2sml )
    x2 = 0.0;
    x3 = 0.0;
    value = x2 * ( r4_csevl ( x3, bifcs, nbif ) + 0.25 ) ...
      + r4_csevl ( x3, bigcs, nbig ) + 0.5;
  elseif ( abs ( x ) <= x3sml )
    x2 = x * x;
    x3 = 0.0;
    value = x2 * ( r4_csevl ( x3, bifcs, nbif ) + 0.25 ) ...
      + r4_csevl ( x3, bigcs, nbig ) + 0.5;
  elseif ( x <= 1.0 )
    x2 = x * x;
    x3 = x * x * x;
    value = x2 * ( r4_csevl ( x3, bifcs, nbif ) + 0.25 ) ...
      + r4_csevl ( x3, bigcs, nbig ) + 0.5;
  elseif ( x <= 2.0 )
    z = ( 2.0 * x * x * x - 9.0 ) / 7.0;
    value = x * x * ( r4_csevl ( z, bif2cs, nbif2 ) + 0.25 ) ...
      + r4_csevl ( z, big2cs, nbig2 ) + 0.5;
  else
    value = r4_bide ( x ) * exp ( 2.0 * x * sqrt ( x ) / 3.0 );
  end

  return
end
