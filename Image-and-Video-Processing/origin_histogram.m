function [ origin_histogram ] = origin_histogram( Image )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

%直方图 统计各个等级的灰度值并保存
[m,n]=size(Image); 
origin_histogram=zeros(1,256);
for k=0:255 
     origin_histogram(k+1)=length(find(Image==k));  %计算每级灰度出现的概率，将其存入origin_histogram
end 

end

