function [ lastclean ] = cleaner( imagefrom3 )

iclean=imdilate(imagefrom3,strel('disk',1));

cleanprop=regionprops(iclean,'Area','Centroid','Image','PixelIdxList');
cleanAreas=[cleanprop.Area];
Areaav=mean(cleanAreas);
Areastdev=std(cleanAreas);

ids=find(cleanAreas<(Areastdev));
lids=length(ids);

for ii=1:lids
iclean(cleanprop(ids(ii)).PixelIdxList)=false; 
end

lastclean=imdilate(iclean,strel('disk',6));
figure(6); imshow(lastclean,[]);

end

