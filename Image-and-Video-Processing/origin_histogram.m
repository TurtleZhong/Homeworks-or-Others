function [ origin_histogram ] = origin_histogram( Image )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

%ֱ��ͼ ͳ�Ƹ����ȼ��ĻҶ�ֵ������
[m,n]=size(Image); 
origin_histogram=zeros(1,256);
for k=0:255 
     origin_histogram(k+1)=length(find(Image==k));  %����ÿ���Ҷȳ��ֵĸ��ʣ��������origin_histogram
end 

end

