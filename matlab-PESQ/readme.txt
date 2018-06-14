1.将所录序列加载如当前工作路径，也可以按自己工作路径自行加载；

2.在read.m中修改参考序列，默认为ref.wav,16KHz采样；

3.利用wavdivide.m对所录多组序列文件进行拆分（支持多种采样频率），并按序保证至当前路径；

4.运行tongji.m计算PESQ_MOS得分并通过excel/txt输出至指定路径；

NOTE：
    对于步骤4,每次执行记得修改excel中输出列位置，如cellnames2=['B',num2str(k+1),':B',num2str(k+1)];，
    指定写入B列，下次执行改为C列，以此类推；
    其中ref_8k.wav为8KHz采样测试序列，ref.wav为16KHz，ref_3s.wav只是为方便测试在ref.wav语音前加3s静音；