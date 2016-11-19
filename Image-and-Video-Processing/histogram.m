clear all;
clc; 
Image = imread('scenery.jpg'); %����ͼƬ
Image = rgb2gray(Image);  %�ҶȻ�
origin_hist = origin_histogram(Image); %�����Լ�д��ԭʼֱ��ͼ���ɺ���
normal_hist = normalized_histogram(Image); %�����Լ�д�Ĺ淶��ԭʼֱ��ͼ���ɺ���
[cumulative_hist,cumulative_image] = cumulative_histogram(Image); %�����Լ�д�ľ��⻯ԭʼֱ��ͼ���ɺ����Լ����⻯֮���ͼƬ

figure;
subplot(231);bar(0:255,origin_hist,'b');
title('origin histogram') 

subplot(232);bar(0:255,normal_hist,'b');  
title('normalized histogram') 
 
subplot(233);bar(0:255,cumulative_hist,'b') 
title('cumulative histogram') 

subplot(234);imshow(Image);
title('origin image') ;
subplot(235);imshow(Image);
title('normalized image') ;
subplot(236);imshow(cumulative_image);
title('cumulative image');