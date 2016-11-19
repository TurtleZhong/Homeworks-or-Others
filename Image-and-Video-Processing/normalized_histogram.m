function [ onrmalized_histogram ] = normalized_histogram( Image )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%直方图 统计各个等级的灰度值并保存
[m,n]=size(Image); 
onrmalized_histogram=zeros(1,256);
for k=0:255 
     onrmalized_histogram(k+1)=length(find(Image==k))/(m * n);  %计算每级灰度出现的概率，将其存入noramlized_histogram
end 

end

