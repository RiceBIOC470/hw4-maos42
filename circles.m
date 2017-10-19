function [ mask ] = circles( n )

% 2. Write a function that takes an integer value as input and outputs a
% 1024x1024 binary image mask containing 20 circles of that size in random
% locations

image=false(1024);
limg=1:length(image);

x=datasample(limg,20);
y=datasample(limg,20);

%imshow(bmask,[]);
%hold on;

for ii=1:20;
image(x(ii),y(ii))=true;
end

mask=imdilate(image,strel('sphere',n));
imshow(mask,[]);

end

