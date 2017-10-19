function [ result ] = nCIA( mask,img )

cellp=regionprops(mask,img,'MeanIntensity','Area');
areas=[cellp.Area]; intensity=[cellp.MeanIntensity]; 

ncells=length(areas);
areamean=mean(areas);
intensitymean=mean(intensity);

result=zeros(1,3);
result(1)=ncells;
result(2)=areamean;
result(3)=intensitymean;

disp('the number of cells is:') 
ncells
disp('the average of the area is:')
areamean
disp('the average of intensity is:')
intensitymean

end

