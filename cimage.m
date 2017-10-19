function [ image ] = cimage( x,y )

image=rand(x,y);
imshow(image);
imwrite(image,'rand8bit.tif');

end

