function [ onrmalized_histogram ] = normalized_histogram( Image )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%ֱ��ͼ ͳ�Ƹ����ȼ��ĻҶ�ֵ������
[m,n]=size(Image); 
onrmalized_histogram=zeros(1,256);
for k=0:255 
     onrmalized_histogram(k+1)=length(find(Image==k))/(m * n);  %����ÿ���Ҷȳ��ֵĸ��ʣ��������noramlized_histogram
end 

end

