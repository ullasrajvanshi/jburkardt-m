function pdf = normal_truncated_ab_pdf ( x, mu, s, a, b )

%*****************************************************************************80
%
%% NORMAL_TRUNCATED_AB_PDF evaluates the truncated Normal PDF.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    14 August 2013
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, real X, the argument of the PDF.
%
%    Input, real MU, S, the mean and standard deviation of the
%    parent Normal distribution.
%
%    Input, real A, B, the lower and upper truncation limits.
%
%    Output, real PDF, the value of the PDF.
%
  alpha = ( a - mu ) / s;
  beta = ( b - mu ) / s;
  xi = ( x - mu ) / s;

  alpha_cdf = normal_01_cdf ( alpha );
  beta_cdf = normal_01_cdf ( beta );
  xi_pdf = normal_01_pdf ( xi );

  pdf = xi_pdf / ( beta_cdf - alpha_cdf ) / s;

  return
end