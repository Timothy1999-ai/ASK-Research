%Importing in 3D Images

[fileName,pathName] = uigetfile('*.raw');
fullFile = fullfile(pathName, fileName);

I = imread(fullFile, raw); % can't read in raw. Need jpeg or tif.
imshow(I)

