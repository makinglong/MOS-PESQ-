%%%%%%%%%%%%%%%%%%%%统计QQ语音通话质量(新)%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%kingma-----2015-9-8号%%%%%%%%%%%%%%%%%%%%%%%%%

% clc
% clear all
% close all
%%
%读取文件及初始化
N =11;                                  %文件个数
%[code,pesq,X,Y] = read('E:\自动化测试\record\', N);

%[pesq,X,Y] = read_test('E:\自动化测试\test\', N);
% xlswrite('D:\matlab\混音\zidonghuaceshi\924921636speechQuality\test_xin.xls',test_pesq);%数据存储至D盘根目录下
% D:\matlab\混音\924921636speechQuality为存储路径及文件名
% pesq1 为需要存储的数据 
% data1为存储至Excel中的表单名
data=xlsread('PESQ.xls');