function [ intensities ] = cintensities( img, size )

randomimg=imread(img); 
wcircles=circles(size);
cellp=regionprops(wcircles,randomimg,'MeanIntensity','MaxIntensity','Area');
intensities=[cellp.MeanIntensity];

end

