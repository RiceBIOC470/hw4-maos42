function [ threshold ] = ithreshold( imagefrom2 )

bimg=im2double(imagefrom2);

stdev=std(bimg);
avstdev=mean(stdev*2);

threshold=bimg>avstdev;
figure(3);imshow(threshold,[]);

end

