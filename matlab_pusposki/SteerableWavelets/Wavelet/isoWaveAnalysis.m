function [approx detail] = isoWaveAnalysis(A,ha,hd)
%
% function [approx detail] = isoWaveAnalysis(A,ha,hd)
%
%
% single-scale isotropic wavelet analysis.
%
%
% INPUTS
% ------
%
% A             image to process
%
% ha            approximation filter (function handle)
%
% hd            detail filter  (function handle)
%
%
% OUTPUTS
% -------
%
% approx        lowpass channel
%
% detail        highpass channel
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


sA = size(A); 

wmax1 = pi;
wmax2 = pi;
dw1   = 2*pi/sA(1);
dw2   = 2*pi/sA(2);
w1    = -wmax1:dw1:(wmax1-dw1);
w2    = -wmax2:dw2:(wmax2-dw2);

[W1 W2] = ndgrid(w1,w2);

RHO     = sqrt(W1.^2+W2.^2);

Fscaling = ha(RHO); 
Fwavelet = hd(RHO);

FA = fftshift(fftn(A));

approx = ifftn(fftshift(Fscaling.*FA));
detail = ifftn(fftshift(Fwavelet.*FA));

% fftshift Shift zero-frequency component to center of spectrum.
