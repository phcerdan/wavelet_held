function [U,harmonics] = Gradient()
%
% function [U,harmonics] = Gradient()
%
%
% U matrix for gradient design.
%
%
% INPUTS
% ------
%
%
% OUTPUTS
% -------
%
% U             construction matrix
%
% harmonics     vector of harmonics (corresponding to exp^j*harmonics*angle)
%
%
% REFERENCE
% ---------
% You are free to use this software for research purposes, but you should 
% not redistribute it without our consent.
%
% In addition, we expect you to include the following citations:
%
% Z. Puspoki and M. Unser, "Template-Free Wavelet-Based Detection of Local
% Symmetries", IEEE Transactions on Image Processing, vol. 24, no. 10, 
% pp. 3009-3018, October 2015
% M. Unser and N. Chenouard, "A Unifying Parametric Framework for 2D Steerable
% Wavelet Transforms", SIAM Journal on Imaging Sciences, vol. 6, no. 1, 
% pp. 102-135, 2013. 
%
%
% AUTHOR
% ------
%
% Z. Puspoki (zsuzsanna.puspoki@epfl.ch)
%
% Biomedical Imaging Group
% Ecole Polytechnique Federale de Lausanne (EPFL)


U = [1i/2 , 1i/2; -1/2 , 1/2];

harmonics = [-1,1];

end
