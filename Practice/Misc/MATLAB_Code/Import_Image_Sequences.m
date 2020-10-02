%Importing in Image Sequences


%For each file in the image sequence.
d=dir('*.tif')
for i=1:numel(d) 
  im=imread(d(i).name);
  matrix_3D_Images(:,:,i) = im;
end
matrix_3D_Images;
%When loaded into matlab, the image is transposed and the index of matlab
%is 1 instaed of 0 with ImageJ
%So ,
% (x,y,z) in ImageJ is (y+1,x+1,z+1) in MATLAB



x = 10365;
ismember(x,matrix_3D_Images)

%How to find where a value is in an array
%First create target of what you are looking for.
target = x;
%Temp distances array
temp = abs(target - matrix_3D_Images);
%Find the closest value in the array to target value.
closest = matrix_3D_Images(find(temp == min(abs(target - matrix_3D_Images))));

X = [1 2 3 4; 5 6 7 8]

