% ||---------------------------------------------||
% || thresholding of bl6/zh3 RML +/- Y57A, Y104A ||
% ||---------------------------------------------||

% get list of filenames in directory
% ----------------------------------

dir_contents=dir;

% get number of filenames

dir_length=length(dir)-2;

% get list of filenames

FileNames=strings(1,dir_length);

for i=1:dir_length
    FileNames(i)=dir_contents(i+2).name;
end

% load images into array
% ----------------------

% initialize image array
% read image properties of first image for array
InfoImage=imfinfo(char(FileNames(1)));
mImage=InfoImage(1).Width;
nImage=InfoImage(1).Height;
image_array=zeros(nImage,mImage,dir_length,'uint16');

for i=1:dir_length
    image_array(:,:,i)=imread(FileNames(i),'Index',2);
end
