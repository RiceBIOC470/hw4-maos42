function [ img ] = makefvideo( file1, file2 )

file1='nfkb_movie1.tif';
reader1=bfGetReader(file1); 

file2='nfkb_movie2.tif';
reader2=bfGetReader(file2); 

x1=reader1.getSizeX; x2=reader2.getSizeX;
y1=reader1.getSizeY; y2=reader2.getSizeY;
z1=reader1.getSizeZ; z2=reader2.getSizeZ;
c1=reader1.getSizeC; c2=reader2.getSizeC;
time1=reader1.getSizeT; time2=reader2.getSizeT;

%for movie 1
plane1c1f1=reader1.getIndex(z1-1,c1-2,0)+1; plane1c2f1=reader1.getIndex(z1-1,c1-1,0)+1;
imgp1c1f1=bfGetPlane(reader1,plane1c1f1); imgp1c2f1=bfGetPlane(reader1,plane1c2f1);
frame1=cat(3,imadjust(imgp1c1f1),imadjust(imgp1c2f1),zeros(x1));
%imwrite and append
imwrite(frame1, 'fmovie.tif');

plane1c1f2=reader1.getIndex(z1-1,c1-2,1)+1; plane1c2f2=reader1.getIndex(z1-1,c1-1,1)+1;
imgp1c1f2=bfGetPlane(reader1,plane1c1f2); imgp1c2f2=bfGetPlane(reader1,plane1c2f2);
frame2=cat(3,imadjust(imgp1c1f2),imadjust(imgp1c2f2),zeros(x1));
imwrite(frame2,'fmovie.tif','WriteMode','append');

plane1c1f3=reader1.getIndex(z1-1,c1-2,2)+1; plane1c2f3=reader1.getIndex(z1-1,c1-1,2)+1;
imgp1c1f3=bfGetPlane(reader1,plane1c1f3); imgp1c2f3=bfGetPlane(reader1,plane1c2f3);
frame3=cat(3,imadjust(imgp1c1f3),imadjust(imgp1c2f3),zeros(x1));
imwrite(frame3,'fmovie.tif','WriteMode','append');

plane1c1f4=reader1.getIndex(z1-1,c1-2,3)+1; plane1c2f4=reader1.getIndex(z1-1,c1-1,3)+1;
imgp1c1f4=bfGetPlane(reader1,plane1c1f4); imgp1c2f4=bfGetPlane(reader1,plane1c2f4);
frame4=cat(3,imadjust(imgp1c1f4),imadjust(imgp1c2f4),zeros(x1));
imwrite(frame4,'fmovie.tif','WriteMode','append');

plane1c1f5=reader1.getIndex(z1-1,c1-2,4)+1; plane1c2f5=reader1.getIndex(z1-1,c1-1,4)+1;
imgp1c1f5=bfGetPlane(reader1,plane1c1f5); imgp1c2f5=bfGetPlane(reader1,plane1c2f5);
frame5=cat(3,imadjust(imgp1c1f5),imadjust(imgp1c2f5),zeros(x1));
imwrite(frame5,'fmovie.tif','WriteMode','append');

plane1c1f6=reader1.getIndex(z1-1,c1-2,5)+1; plane1c2f6=reader1.getIndex(z1-1,c1-1,5)+1;
imgp1c1f6=bfGetPlane(reader1,plane1c1f6); imgp1c2f6=bfGetPlane(reader1,plane1c2f6);
frame6=cat(3,imadjust(imgp1c1f6),imadjust(imgp1c2f6),zeros(x1));
imwrite(frame6,'fmovie.tif','WriteMode','append');

plane1c1f7=reader1.getIndex(z1-1,c1-2,6)+1; plane1c2f7=reader1.getIndex(z1-1,c1-1,6)+1;
imgp1c1f7=bfGetPlane(reader1,plane1c1f7); imgp1c2f7=bfGetPlane(reader1,plane1c2f7);
frame7=cat(3,imadjust(imgp1c1f7),imadjust(imgp1c2f7),zeros(x1));
imwrite(frame7,'fmovie.tif','WriteMode','append');

plane1c1f8=reader1.getIndex(z1-1,c1-2,7)+1; plane1c2f8=reader1.getIndex(z1-1,c1-1,7)+1;
imgp1c1f8=bfGetPlane(reader1,plane1c1f8); imgp1c2f8=bfGetPlane(reader1,plane1c2f8);
frame8=cat(3,imadjust(imgp1c1f8),imadjust(imgp1c2f8),zeros(x1));
imwrite(frame8,'fmovie.tif','WriteMode','append');

plane1c1f9=reader1.getIndex(z1-1,c1-2,8)+1; plane1c2f9=reader1.getIndex(z1-1,c1-1,8)+1;
imgp1c1f9=bfGetPlane(reader1,plane1c1f9); imgp1c2f9=bfGetPlane(reader1,plane1c2f9);
frame9=cat(3,imadjust(imgp1c1f9),imadjust(imgp1c2f9),zeros(x1));
imwrite(frame9,'fmovie.tif','WriteMode','append');

plane1c1f10=reader1.getIndex(z1-1,c1-2,9)+1; plane1c2f10=reader1.getIndex(z1-1,c1-1,9)+1;
imgp1c1f10=bfGetPlane(reader1,plane1c1f10); imgp1c2f10=bfGetPlane(reader1,plane1c2f10);
frame10=cat(3,imadjust(imgp1c1f10),imadjust(imgp1c2f10),zeros(x1));
imwrite(frame10,'fmovie.tif','WriteMode','append');

plane1c1f11=reader1.getIndex(z1-1,c1-2,10)+1; plane1c2f11=reader1.getIndex(z1-1,c1-1,10)+1;
imgp1c1f11=bfGetPlane(reader1,plane1c1f11); imgp1c2f11=bfGetPlane(reader1,plane1c2f11);
frame11=cat(3,imadjust(imgp1c1f11),imadjust(imgp1c2f11),zeros(x1));
imwrite(frame11,'fmovie.tif','WriteMode','append');

plane1c1f12=reader1.getIndex(z1-1,c1-2,11)+1; plane1c2f12=reader1.getIndex(z1-1,c1-1,11)+1;
imgp1c1f12=bfGetPlane(reader1,plane1c1f12); imgp1c2f12=bfGetPlane(reader1,plane1c2f12);
frame12=cat(3,imadjust(imgp1c1f12),imadjust(imgp1c2f12),zeros(x1));
imwrite(frame12,'fmovie.tif','WriteMode','append');

plane1c1f13=reader1.getIndex(z1-1,c1-2,12)+1; plane1c2f13=reader1.getIndex(z1-1,c1-1,12)+1;
imgp1c1f13=bfGetPlane(reader1,plane1c1f13); imgp1c2f13=bfGetPlane(reader1,plane1c2f13);
frame13=cat(3,imadjust(imgp1c1f13),imadjust(imgp1c2f13),zeros(x1));
imwrite(frame13,'fmovie.tif','WriteMode','append');

plane1c1f14=reader1.getIndex(z1-1,c1-2,13)+1; plane1c2f14=reader1.getIndex(z1-1,c1-1,13)+1;
imgp1c1f14=bfGetPlane(reader1,plane1c1f14); imgp1c2f14=bfGetPlane(reader1,plane1c2f14);
frame14=cat(3,imadjust(imgp1c1f14),imadjust(imgp1c2f14),zeros(x1));
imwrite(frame14,'fmovie.tif','WriteMode','append');

plane1c1f15=reader1.getIndex(z1-1,c1-2,14)+1; plane1c2f15=reader1.getIndex(z1-1,c1-1,14)+1;
imgp1c1f15=bfGetPlane(reader1,plane1c1f15); imgp1c2f15=bfGetPlane(reader1,plane1c2f15);
frame15=cat(3,imadjust(imgp1c1f15),imadjust(imgp1c2f15),zeros(x1));
imwrite(frame15,'fmovie.tif','WriteMode','append');

plane1c1f16=reader1.getIndex(z1-1,c1-2,15)+1; plane1c2f16=reader1.getIndex(z1-1,c1-1,15)+1;
imgp1c1f16=bfGetPlane(reader1,plane1c1f16); imgp1c2f16=bfGetPlane(reader1,plane1c2f16);
frame16=cat(3,imadjust(imgp1c1f16),imadjust(imgp1c2f16),zeros(x1));
imwrite(frame16,'fmovie.tif','WriteMode','append');

plane1c1f17=reader1.getIndex(z1-1,c1-2,16)+1; plane1c2f17=reader1.getIndex(z1-1,c1-1,16)+1;
imgp1c1f17=bfGetPlane(reader1,plane1c1f17); imgp1c2f17=bfGetPlane(reader1,plane1c2f17);
frame17=cat(3,imadjust(imgp1c1f17),imadjust(imgp1c2f17),zeros(x1));
imwrite(frame17,'fmovie.tif','WriteMode','append');

plane1c1f18=reader1.getIndex(z1-1,c1-2,17)+1; plane1c2f18=reader1.getIndex(z1-1,c1-1,17)+1;
imgp1c1f18=bfGetPlane(reader1,plane1c1f18); imgp1c2f18=bfGetPlane(reader1,plane1c2f18);
frame18=cat(3,imadjust(imgp1c1f18),imadjust(imgp1c2f18),zeros(x1));
imwrite(frame18,'fmovie.tif','WriteMode','append');

%start of 2
plane2c1f1=reader2.getIndex(z2-1,c2-2,0)+1; plane2c2f1=reader2.getIndex(z2-1,c2-1,0)+1;
imgp2c1f1=bfGetPlane(reader2,plane2c1f1); imgp2c2f1=bfGetPlane(reader2,plane2c2f1);
frame19=cat(3,imadjust(imgp2c1f1),imadjust(imgp2c2f1),zeros(x1));
imwrite(frame19,'fmovie.tif','WriteMode','append');

plane2c1f2=reader2.getIndex(z2-1,c2-2,1)+1; plane2c2f2=reader2.getIndex(z2-1,c2-1,1)+1;
imgp2c1f2=bfGetPlane(reader2,plane2c1f2); imgp2c2f2=bfGetPlane(reader2,plane2c2f2);
frame20=cat(3,imadjust(imgp2c1f2),imadjust(imgp2c2f2),zeros(x1));
imwrite(frame20,'fmovie.tif','WriteMode','append');

plane2c1f3=reader2.getIndex(z2-1,c2-2,2)+1; plane2c2f3=reader2.getIndex(z2-1,c2-1,2)+1;
imgp2c1f3=bfGetPlane(reader2,plane2c1f3); imgp2c2f3=bfGetPlane(reader2,plane2c2f3);
frame21=cat(3,imadjust(imgp2c1f3),imadjust(imgp2c2f3),zeros(x1));
imwrite(frame21,'fmovie.tif','WriteMode','append');

plane2c1f4=reader2.getIndex(z2-1,c2-2,3)+1; plane2c2f4=reader2.getIndex(z2-1,c2-1,3)+1;
imgp2c1f4=bfGetPlane(reader2,plane2c1f4); imgp2c2f4=bfGetPlane(reader2,plane2c2f4);
frame22=cat(3,imadjust(imgp2c1f4),imadjust(imgp2c2f4),zeros(x1));
imwrite(frame22,'fmovie.tif','WriteMode','append');

plane2c1f5=reader2.getIndex(z2-1,c2-2,4)+1; plane2c2f5=reader2.getIndex(z2-1,c2-1,4)+1;
imgp2c1f5=bfGetPlane(reader2,plane2c1f5); imgp2c2f5=bfGetPlane(reader2,plane2c2f5);
frame23=cat(3,imadjust(imgp2c1f5),imadjust(imgp2c2f5),zeros(x1));
imwrite(frame23,'fmovie.tif','WriteMode','append');

plane2c1f6=reader2.getIndex(z2-1,c2-2,5)+1; plane2c2f6=reader2.getIndex(z2-1,c2-1,5)+1;
imgp2c1f6=bfGetPlane(reader2,plane2c1f6); imgp2c2f6=bfGetPlane(reader2,plane2c2f6);
frame24=cat(3,imadjust(imgp2c1f6),imadjust(imgp2c2f6),zeros(x1));
imwrite(frame24,'fmovie.tif','WriteMode','append');

plane2c1f7=reader2.getIndex(z2-1,c2-2,6)+1; plane2c2f7=reader2.getIndex(z2-1,c2-1,6)+1;
imgp2c1f7=bfGetPlane(reader2,plane2c1f7); imgp2c2f7=bfGetPlane(reader2,plane2c2f7);
frame25=cat(3,imadjust(imgp2c1f7),imadjust(imgp2c2f7),zeros(x1));
imwrite(frame25,'fmovie.tif','WriteMode','append');

plane2c1f8=reader2.getIndex(z2-1,c2-2,7)+1; plane2c2f8=reader2.getIndex(z2-1,c2-1,7)+1;
imgp2c1f8=bfGetPlane(reader2,plane2c1f8); imgp2c2f8=bfGetPlane(reader2,plane2c2f8);
frame26=cat(3,imadjust(imgp2c1f8),imadjust(imgp2c2f8),zeros(x1));
imwrite(frame26,'fmovie.tif','WriteMode','append');

plane2c1f9=reader2.getIndex(z2-1,c2-2,8)+1; plane2c2f9=reader2.getIndex(z2-1,c2-1,8)+1;
imgp2c1f9=bfGetPlane(reader2,plane2c1f9); imgp2c2f9=bfGetPlane(reader2,plane2c2f9);
frame27=cat(3,imadjust(imgp2c1f9),imadjust(imgp2c2f9),zeros(x1));
imwrite(frame27,'fmovie.tif','WriteMode','append');

plane2c1f10=reader2.getIndex(z2-1,c2-2,9)+1; plane2c2f10=reader2.getIndex(z2-1,c2-1,9)+1;
imgp2c1f10=bfGetPlane(reader2,plane2c1f10); imgp2c2f10=bfGetPlane(reader2,plane2c2f10);
frame28=cat(3,imadjust(imgp2c1f10),imadjust(imgp2c2f10),zeros(x1));
imwrite(frame28,'fmovie.tif','WriteMode','append');

plane2c1f11=reader2.getIndex(z2-1,c2-2,10)+1; plane2c2f11=reader2.getIndex(z2-1,c2-1,10)+1;
imgp2c1f11=bfGetPlane(reader2,plane2c1f11); imgp2c2f11=bfGetPlane(reader2,plane2c2f11);
frame29=cat(3,imadjust(imgp2c1f11),imadjust(imgp2c2f11),zeros(x1));
imwrite(frame29,'fmovie.tif','WriteMode','append');

plane2c1f12=reader2.getIndex(z2-1,c2-2,11)+1; plane2c2f12=reader2.getIndex(z2-1,c2-1,11)+1;
imgp2c1f12=bfGetPlane(reader2,plane2c1f12); imgp2c2f12=bfGetPlane(reader2,plane2c2f12);
frame30=cat(3,imadjust(imgp2c1f12),imadjust(imgp2c2f12),zeros(x1));
imwrite(frame30,'fmovie.tif','WriteMode','append');

plane2c1f13=reader2.getIndex(z2-1,c2-2,12)+1; plane2c2f13=reader2.getIndex(z2-1,c2-1,12)+1;
imgp2c1f13=bfGetPlane(reader2,plane2c1f13); imgp2c2f13=bfGetPlane(reader2,plane2c2f13);
frame31=cat(3,imadjust(imgp2c1f13),imadjust(imgp2c2f13),zeros(x1));
imwrite(frame31,'fmovie.tif','WriteMode','append');

plane2c1f14=reader2.getIndex(z2-1,c2-2,13)+1; plane2c2f14=reader2.getIndex(z2-1,c2-1,13)+1;
imgp2c1f14=bfGetPlane(reader2,plane2c1f14); imgp2c2f14=bfGetPlane(reader2,plane2c2f14);
frame32=cat(3,imadjust(imgp2c1f14),imadjust(imgp2c2f14),zeros(x1));
imwrite(frame32,'fmovie.tif','WriteMode','append');

plane2c1f15=reader2.getIndex(z2-1,c2-2,14)+1; plane2c2f15=reader2.getIndex(z2-1,c2-1,14)+1;
imgp2c1f15=bfGetPlane(reader2,plane2c1f15); imgp2c2f15=bfGetPlane(reader2,plane2c2f15);
frame33=cat(3,imadjust(imgp2c1f15),imadjust(imgp2c2f15),zeros(x1));
imwrite(frame33,'fmovie.tif','WriteMode','append');

plane2c1f16=reader2.getIndex(z2-1,c2-2,15)+1; plane2c2f16=reader2.getIndex(z2-1,c2-1,15)+1;
imgp2c1f16=bfGetPlane(reader2,plane2c1f16); imgp2c2f16=bfGetPlane(reader2,plane2c2f16);
frame34=cat(3,imadjust(imgp2c1f16),imadjust(imgp2c2f16),zeros(x1));
imwrite(frame34,'fmovie.tif','WriteMode','append');

plane2c1f17=reader2.getIndex(z2-1,c2-2,16)+1; plane2c2f17=reader2.getIndex(z2-1,c2-1,16)+1;
imgp2c1f17=bfGetPlane(reader2,plane2c1f17); imgp2c2f17=bfGetPlane(reader2,plane2c2f17);
frame35=cat(3,imadjust(imgp2c1f17),imadjust(imgp2c2f17),zeros(x1));
imwrite(frame35,'fmovie.tif','WriteMode','append');

plane2c1f18=reader2.getIndex(z2-1,c2-2,17)+1; plane2c2f18=reader2.getIndex(z2-1,c2-1,17)+1;
imgp2c1f18=bfGetPlane(reader2,plane2c1f18); imgp2c2f18=bfGetPlane(reader2,plane2c2f18);
frame36=cat(3,imadjust(imgp2c1f18),imadjust(imgp2c2f18),zeros(x1));
imwrite(frame36,'fmovie.tif','WriteMode','append');


img=imread('fmovie.tif');

end

