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
reader1=bfGetReader(file1); %this generates a Warning

file2='nfkb_movie2.tif';
reader2=bfGetReader(file2); %this generates a Warning

x1=reader1.getSizeX; x2=reader2.getSizeX;
y1=reader1.getSizeY; y2=reader2.getSizeY;
z1=reader1.getSizeZ; z2=reader2.getSizeZ;
c1=reader1.getSizeC; c2=reader2.getSizeC;
time1=reader1.getSizeT; time2=reader2.getSizeT;

plane1c1f1=reader1.getIndex(z1-1,c1-2,0)+1; plane1c2f1=reader1.getIndex(z1-1,c1-1,0)+1;
imgp1c1f1=bfGetPlane(reader1,plane1c1f1); imgp1c2f1=bfGetPlane(reader1,plane1c2f1);
frame1=cat(3,imadjust(imgp1c1f1),imadjust(imgp1c2f1),zeros(x1));

plane1c1f2=reader1.getIndex(z1-1,c1-2,1)+1; plane1c2f2=reader1.getIndex(z1-1,c1-1,1)+1;
imgp1c1f2=bfGetPlane(reader1,plane1c1f2); imgp1c2f2=bfGetPlane(reader1,plane1c2f2);
frame2=cat(3,imadjust(imgp1c1f2),imadjust(imgp1c2f2),zeros(x1));

movie=stack(2,frame1,frame2);

%pero esta entra hasta despu�s del frame 19
plane2=reader2.getIndex(z2-1,c2-2,0)+1;


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

plane1=reader1.getIndex(z1-1,c1-2,time1-19)+1;
imgp1=bfGetPlane(reader1,plane1);
imshow(imadjust(imgp1),[]);

% 2. Write a function which performs smoothing and background subtraction
% on an image and apply it to the image from (1). Any necessary parameters
% (e.g. smoothing radius) should be inputs to the function. Choose them
% appropriately when calling the function.

%Miguel Angel: the first input is the image, the second the radius for the
%gaussian blur, the third is the sigma value for gaussian blur and the
%last, is the size of the strel for background substraction.

smoothbg(imgp1,2,10,100);

% 3. Write  a function which automatically determines a threshold  and
% thresholds an image to make a binary mask. Apply this to your output
% image from 2. 

imagefrom2=smoothbg(imgp1,2,10,100);
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

plane12=reader1.getIndex(z1-3,c1-1,time1-19)+1;
imgp12=bfGetPlane(reader1,plane12);
figure(7); imshow(imgp12,[]);
figure(8); imshow(imagefrom2,[]);

newimgc2=smoothbg(imgp12,2,2,200);
figure(9); imshow(newimgc2);
nCIA(imagefrom2,newimgc2); %why do I get a NaN ?!??!?!?!!



%%
% Problem 4. 

% 1. Write a loop that calls your functions from Problem 3 to produce binary masks
% for every time point in the two movies. Save a movie of the binary masks.




% 2. Use a loop to call your function from problem 3, part 5 on each one of
% these masks and the corresponding images and 
% get the number of cells and the mean intensities in both
% channels as a function of time. Make plots of these with time on the
% x-axis and either number of cells or intensity on the y-axis. 

