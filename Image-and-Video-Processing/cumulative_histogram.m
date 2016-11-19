function [ cumulative_histogram, cumulative_image] = cumulative_histogram( Image )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

normal_hist = normalized_histogram(Image);
%cumulative_histogram 
S1=zeros(1,256); 
for i=1:256
    for j=1:i 
          S1(i)=normal_hist(j)+S1(i);
    end 
end 
S2=round((S1*256)+0.5); %将Sk归到相近级的灰度 
for i=1:256 
    cumulative_histogram(i)=sum(normal_hist(find(S2==i)));%计算现有每个灰度级出现的概率 
end 

cumulative_image=Image;
for i=0:255
    cumulative_image(find(Image==i)) = S2(i+1);
end


end

