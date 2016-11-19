clear all;
clc; 
Image = imread('scenery.jpg'); %载入图片
Image = rgb2gray(Image);  %灰度化
origin_hist = origin_histogram(Image); %调用自己写的原始直方图生成函数
normal_hist = normalized_histogram(Image); %调用自己写的规范化原始直方图生成函数
[cumulative_hist,cumulative_image] = cumulative_histogram(Image); %调用自己写的均衡化原始直方图生成函数以及均衡化之后的图片

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