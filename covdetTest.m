run E:/MatlabTools/vlfeat-0.9.20-bin/toolbox/vl_setup.m;
clear;
im = imread('test.png');
im = rgb2gray(im);
im = im2single(im) ;
[f,d] = vl_covdet(im, 'DoubleImage', true, 'EstimateAffineShape', true, 'PatchRelativeExtent', 10, 'PatchRelativeSmoothing', 1, 'Method', 'DoG', 'verbose') ;

[f,d] = vl_covdet(...
  im, ...
  'DoubleImage', true, ...
  'EstimateAffineShape', true, ...
  'PatchRelativeExtent', 10, ...
  'PatchRelativeSmoothing', 1, ...
  'Method', 'DoG') ; %f:6*n_points,d:128*n_points