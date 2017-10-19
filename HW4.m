%HW4
%% 
% Problem 1. 

% 1. Write a function to generate an 8-bit image of size 1024x1024 with a random value 
% of the intensity in each pixel. Call your image rand8bit.tif. 

%Miguel Angel: input x and y sizes.
cimage(1024,1024);

% 2. Write a function that takes an integer value as input and outputs a
% 1024x1024 binary image mask containing 20 circles of that size in random
% locations

%Miguel Angel: just input the size. 
circles(15);

% 3. Write a function that takes the image from (1) and the binary mask
% from (2) and returns a vector of mean intensities of each circle (hint: use regionprops).

%At the moment you run the first function (from part 1), the image 'rand8bit.tif' should be created.
%Miguel Angel: you have to input the image and then the circle size.
cintensities('rand8bit.tif',15);

% 4. Plot the mean and standard deviation of the values in your output
% vector as a function of circle size. Explain your results. 

%Miguel angel: I know this is not a very elegant way of doing it, and not
%practical, but when I tried to use a loop for this, it wouldn't work. So,
%I'm sorry for the multiple variables. 
sizes=[1,5,10,20,30];

intensities1=cintensities('rand8bit.tif',1); intensities2=cintensities('rand8bit.tif',5);
intensities3=cintensities('rand8bit.tif',10); intensities4=cintensities('rand8bit.tif',15);
intensities5=cintensities('rand8bit.tif',20); intensities6=cintensities('rand8bit.tif',25);
intensities7=cintensities('rand8bit.tif',30);

meanint1=mean(intensities1); meanint2=mean(intensities2); meanint3=mean(intensities3);
meanint4=mean(intensities4); meanint5=mean(intensities5); meanint6=mean(intensities6);
meanint7=mean(intensities7);

stdev1=std(intensities1); stdev2=std(intensities2); stdev3=std(intensities3);
stdev4=std(intensities4); stdev5=std(intensities5); stdev6=std(intensities6);
stdev7=std(intensities7);

plot(1,meanint1, 'r.', 'MarkerSize', 20); hold on; 
errorbar(1,meanint1,stdev1, 'MarkerSize', 15, 'MarkerEdgeColor','red' );
plot(5,meanint2, 'r.', 'MarkerSize', 20); hold on;
errorbar(5,meanint2,stdev2, 'MarkerSize', 15, 'MarkerEdgeColor','red' );
plot(10,meanint3, 'r.', 'MarkerSize', 20); hold on;
errorbar(10,meanint3,stdev3, 'MarkerSize', 15, 'MarkerEdgeColor','red' );
plot(15,meanint4, 'r.', 'MarkerSize', 20); hold on;
errorbar(15,meanint4,stdev4, 'MarkerSize', 15, 'MarkerEdgeColor','red' );
plot(20,meanint5, 'r.', 'MarkerSize', 20); hold on;
errorbar(20,meanint5,stdev5, 'MarkerSize', 15, 'MarkerEdgeColor','red' );
plot(25,meanint6, 'r.', 'MarkerSize', 20); hold on;
errorbar(25,meanint6,stdev6, 'MarkerSize', 15, 'MarkerEdgeColor','red' );
plot(30,meanint7, 'r.', 'MarkerSize', 20); hold on;
errorbar(30,meanint7,stdev7, 'MarkerSize', 15, 'MarkerEdgeColor','red' );

xlabel('Sizes','FontSize',28);
ylabel('Average Intensities','FontSize',28);

%Miguel Angel:
% if you plot the sizes against the average intensities, the smaller the
% circle is, the higher your standar deviation. As we can see from the data
% when I input a size 1 circle, I get a stdev of 30 in the mean intensities
% value, as I go further, from size 1 to 5, the stdev reduces down to 8.52,
% almost 4 times. From the circles of size 20, 25 and 30, we can see their
% stdev its very similar. This could be due the fact that the longer the
% circle is the less space availabe it will have in 1024x1024 image. 

%%

%Problem 2. Here is some data showing an NFKB reporter in ovarian cancer
%cells. 
%https://www.dropbox.com/sh/2dnyzq8800npke8/AABoG3TI6v7yTcL_bOnKTzyja?dl=0
%There are two files, each of which have multiple timepoints, z
%slices and channels. One channel marks the cell nuclei and the other
%contains the reporter which moves into the nucleus when the pathway is
%active. 
%
%Part 1. Use Fiji to import both data files, take maximum intensity
%projections in the z direction, concatentate the files, display both
%channels together with appropriate look up tables, and save the result as
%a movie in .avi format. Put comments in this file explaining the commands
%you used and save your .avi file in your repository (low quality ok for
%space). 

%Movie file: 'Red LT Concatenated Movie part 1'

% First, I opened both sequences with Fiji. After that, I set up the Z
% direction to the maximum (all to the right) for maximum intensity for
% both files. Then I merged the channels for both files (although file 2
% only has 1 channel). After this I went to Image>Stacks>Tools>Concatenate
% and selected first nfkb_movie1 then nfkb_movie2. I merged the channels
% again, and now the movie is displayed with the membrane all the time. 

%Part 2. Perform the same operations as in part 1 but use MATLAB code. You don't
%need to save the result in your repository, just the code that produces
%it. 

file1='nfkb_movie1.tif';
file2='nfkb_movie2.tif';
makefvideo( file1, file2 );

%Miguel Angel: I made a function to recreate image/video from code because I
%had to use a lot of variables in order to create it. I had to make frame
%per frame. I know it is not the best way to do it, if not the worst,
%however I couldn't do it with a loop. The image output isfmovie.tif, and it
%does have the full 37 frames, however I don't know why, Matlab is not
%putting them as timelapse, because when I open the image in Fiji, it
%doesn't recognize it as a movie, BUT !!! if you open it on finder with
%Preview it will show all the frames. I tried to make it a gif, but the
%image is UINT16, I tried to convert it to UINT8 but that didn't work as
%well. But technically I recreated the concatenated tif.


%%

% Problem 3. 
% Continue with the data from part 2
% 
% 1. Use your MATLAB code from Problem 2, Part 2  to generate a maximum
% intensity projection image  of the first channel of the first time point
% of movie 1. 

file1='nfkb_movie1.tif';
reader1=bfGetReader(file1); 

x1=reader1.getSizeX; y1=reader1.getSizeY; 
z1=reader1.getSizeZ;  c1=reader1.getSizeC; 
time1=reader1.getSizeT; 

ind=reader1.getIndex(0,0,0)+1;
imgmax=bfGetPlane(reader1,ind);

for ii=1:z1
    ind=reader1.getIndex(ii-1,0,0)+1;
    imgnow=bfGetPlane(reader1,ind);
    imgmax=max(imgmax,imgnow);
end

imshow(imgmax,[]);

% 2. Write a function which performs smoothing and background subtraction
% on an image and apply it to the image from (1). Any necessary parameters
% (e.g. smoothing radius) should be inputs to the function. Choose them
% appropriately when calling the function.

%Miguel Angel: the first input is the image, the second the radius for the
%gaussian blur, the third is the sigma value for gaussian blur and the
%last, is the size of the strel for background substraction.

smoothbg(imgmax,2,10,100);

% 3. Write  a function which automatically determines a threshold  and
% thresholds an image to make a binary mask. Apply this to your output
% image from 2. 

imagefrom2=smoothbg(imgmax,2,10,100);
ithreshold(imagefrom2);

% 4. Write a function that "cleans up" this binary mask - i.e. no small
% dots, or holes in nuclei. It should line up as closely as possible with
% what you perceive to be the nuclei in your image. 

imagefrom3=ithreshold(imagefrom2);
cleaner(imagefrom3);

% 5. Write a function that uses your image from (2) and your mask from 
% (4) to get a. the number of cells in the image. b. the mean area of the
% cells, and c. the mean intensity of the cells in channel 1. 

maskfrom4=cleaner(imagefrom3);
nCIA(maskfrom4,imagefrom2);

% 6. Apply your function from (2) to make a smoothed, background subtracted
% image from channel 2 that corresponds to the image we have been using
% from channel 1 (that is the max intensity projection from the same time point). Apply your
% function from 5 to get the mean intensity of the cells in this channel. 

ind12=reader1.getIndex(0,c1-1,0)+1;
imgmax12=bfGetPlane(reader1,ind12);

for ii=1:z1
    ind12=reader1.getIndex(ii-1,c1-1,0)+1;
    imgnow12=bfGetPlane(reader1,ind12);
    imgmax12=max(imgmax12,imgnow);
end

imshow(imgmax12,[]);

%Note: I don't know why it is picking up the nucleus if I'm specifying
%channel 2, where the membrane is. If you increase the brigthness you can
%see really low the membrane, so somehow the channel 1 is showing up in
%channel 2 as well.

newimgc2=smoothbg(imgmax12,2,2,200);
figure(9); imshow(newimgc2,[]);
imadjust(newimgc2);

nCIA(imagefrom2,newimgc2);

%I don't know why I get a NaN value on the mean Intensity,  it could
%be due the fact that on channel 2 the membrane is really low, so at the
%moment of doing operations is taking channel 2 as completely black, ergo,
%as zero, and that is why it cannot compare it against the image from
%channel 1.

%%
% Problem 4. 

% 1. Write a loop that calls your functions from Problem 3 to produce binary masks
% for every time point in the two movies. Save a movie of the binary masks.

file1='nfkb_movie1.tif'; file2='nfkb_movie2.tif';
reader1=bfGetReader(file1); reader2=bfGetReader(file2);

x1=reader1.getSizeX; y1=reader1.getSizeY; x2=reader2.getSizeX; y2=reader2.getSizeY; 
z1=reader1.getSizeZ;  c1=reader1.getSizeC; z2=reader2.getSizeZ;  c2=reader2.getSizeC; 
time1=reader1.getSizeT; time2=reader2.getSizeT; 

%for movie 1

for jj=1:time1
for ii=1:z1    
ind1=reader1.getIndex(ii-1,0,jj-1)+1;
imgmax1=bfGetPlane(reader1,ind1);
imgnow1=bfGetPlane(reader1,ind);
imgmax1=max(imgmax1,imgnow);
end

imgmax1=smoothbg(imgmax1,2,10,100);
imgmax1=ithreshold(imgmax1);
imgmax1=ithreshold(imgmax1);
imgmax1=cleaner(imgmax1);
   
if jj<2
imwrite(imgmax1, 'bmaskmovie.tif');
else
imwrite(imgmax1,'bmaskmovie.tif','WriteMode','append');
end
end

%for appending movie 2

for jj2=1:time2
for ii2=1:z2    
ind2=reader2.getIndex(ii2-1,0,jj2-1)+1;
imgmax2=bfGetPlane(reader2,ind2);
imgnow2=bfGetPlane(reader2,ind2);
imgmax2=max(imgmax2,imgnow2);
end

imgmax2=smoothbg(imgmax2,2,10,100);
imgmax2=ithreshold(imgmax2);
imgmax2=ithreshold(imgmax2);
imgmax2=cleaner(imgmax2);
   
imwrite(imgmax2,'bmaskmovie.tif','WriteMode','append');

end

bmaskmovie=imopen('bmaskmovie.tif'); %file of the movie/tif

% 2. Use a loop to call your function from problem 3, part 5 on each one of
% these masks and the corresponding images and 
% get the number of cells and the mean intensities in both
% channels as a function of time. Make plots of these with time on the
% x-axis and either number of cells or intensity on the y-axis. 

store=zeros(time1+time2,3);

for jj=1:time1
for ii=1:z1    
ind1=reader1.getIndex(ii-1,0,jj-1)+1;
imgmax1=bfGetPlane(reader1,ind1);
imgnow1=bfGetPlane(reader1,ind);
imgmax1=max(imgmax1,imgnow);
end

imgmax1=smoothbg(imgmax1,2,10,100);
imgmax1=ithreshold(imgmax1);
imgmax1=ithreshold(imgmax1);
imgmax1=cleaner(imgmax1);

store(jj,:)=nCIA(imgmax1,imgnow1);
end

%for getting values of movie 2

for jj2=1:time2
for ii2=1:z2    
ind2=reader2.getIndex(ii2-1,0,jj2-1)+1;
imgmax2=bfGetPlane(reader2,ind2);
imgnow2=bfGetPlane(reader2,ind2);
imgmax2=max(imgmax2,imgnow2);
end

imgmax2=smoothbg(imgmax2,2,10,100);
imgmax2=ithreshold(imgmax2);
imgmax2=ithreshold(imgmax2);
imgmax2=cleaner(imgmax2);

store(jj+jj2,:)=nCIA(imgmax2,imgnow2);
end
totaltime=time1+time2; %just to simplify things

%plots for channel 1 
plot(1:totaltime, store(:,1));
xlabel('Time Points','FontSize',28);
ylabel('Number of Cells','FontSize',28);
title('Plots in Channel 1');

plot(1:totaltime, store(:,2));
xlabel('Time Points','FontSize',28);
ylabel('Mean Intensities','FontSize',28);
title('Plots in Channel 1');

%
%
%for Channel 2

store2=zeros(time1+time2,3);

for jj=1:time1
for ii=1:z1    
ind1=reader1.getIndex(ii-1,1,jj-1)+1;
imgmax1=bfGetPlane(reader1,ind1);
imgnow1=bfGetPlane(reader1,ind);
imgmax1=max(imgmax1,imgnow);
end

imgmax1=smoothbg(imgmax1,2,10,100);
imgmax1=ithreshold(imgmax1);
imgmax1=ithreshold(imgmax1);
imgmax1=cleaner(imgmax1);

store(jj,:)=nCIA(imgmax1,imgnow1);
end

%for getting values of movie 2

for jj2=1:time2
for ii2=1:z2    
ind2=reader2.getIndex(ii2-1,1,jj2-1)+1;
imgmax2=bfGetPlane(reader2,ind2);
imgnow2=bfGetPlane(reader2,ind2);
imgmax2=max(imgmax2,imgnow2);
end

imgmax2=smoothbg(imgmax2,2,10,100);
imgmax2=ithreshold(imgmax2);
imgmax2=ithreshold(imgmax2);
imgmax2=cleaner(imgmax2);

store2(jj+jj2,:)=nCIA(imgmax2,imgnow2);
end
totaltime=time1+time2; %just to simplify things

%plots for channel 2 
plot(1:totaltime, store2(:,1));
xlabel('Time Points','FontSize',28);
ylabel('Number of Cells','FontSize',28);
title('Plots in Channel 2');

plot(1:totaltime, store2(:,2));
xlabel('Time Points','FontSize',28);
ylabel('Mean Intensities','FontSize',28);
title('Plots in Channel 2');

%this second round of plots are really bad, particularly because channel 2
%are membranes so it is harder to determine the number of cells with them,
%and as I said earlier, on movie 1, the membrane (channel 2) is really low,
%which messes up the binary masks, also, most of this is optimized for cell
%nucleus, and it is easier to count them in channel 1 than 2. 
