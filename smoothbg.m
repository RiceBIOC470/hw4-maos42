function [ img1bgsmooth ] = smoothbg(imgp1,rad,sigma,size )
%rad=5; for testing
%sigma=20; for testing
%size=200; for testing

img1smooth=imfilter(imgp1,fspecial('gaussian',rad,sigma));
img1bg=imopen(img1smooth,strel('disk',size));
img1bgsmooth=imsubtract(img1smooth,img1bg);
imshow(img1bgsmooth,[]);


end

