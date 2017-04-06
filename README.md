# MOS-PESQ-
The project is a tool that can get MOS(PESQ)  score for the voice.
==========================================================================
%%%%%%%%%%%%%%%%%%语音通话质量客观评价%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%E_mail：kinglongbest@163.com%%%%%%%%%%%
%%%%%%%%%%%%%%author: king(微信公众号：天一色)%%%%%%%%
%%%%%%%%%%%%%%%%%%2015-08-10%%%%%%%%%%%%%%%%%%%%%%%%%
PESQ measure:
-------------
Usage of the PESQ objective measure is as follows:
   [pesq_mos]=pesq(cleanfile.wav,enhanced.wav) 
where 'cleanfile.wav' contains the clean speech file and 'enhanced.wav'
contains the enhanced file.

Example:
To run the PESQ objective measure with the example files provided, type 
in MATLAB:
>> pesq('sp09.wav','enhanced_logmmse.wav')

ans =

    2.2557

Source code for the PESQ implementation is available from a CD-ROM  included 
in the following book:
Loizou, P. (2007) "Speech enhancement: Theory and Practice", CRC Press.

========================================================================
COMPOSITE MEASURE:
-----------------
Usage: [Csig,Cbak,Covl]=composite(cleanfile.wav,enhanced.wav)
where 'Csig' is the predicted rating of speech distortion
      'Cbak' is the predicted rating of background distortion
      'Covl' is the predicted rating of overall quality.
      

You may run example files included in the zip file.
In MATLAB, type:
      
>> [c,b,o]=composite('sp09.wav','enhanced_logmmse.wav')

 LLR=0.681368   SNRseg=3.991727   WSS=49.671978   PESQ=2.255732

c =

    3.3050


b =

    2.6160


o =

    2.7133


where 'sp09.wav' is the clean file and 'enhanced_logmmse.wav' is the enhanced file.
The predicted ratings for overall quality was 2.7133, for background was 2.61 and for signal distortion it was 3.3050.

Any questions, please email: kinglongbest@163.com/245051943@qq.com

具体操作步骤：
1.将所录序列加载如当前工作路径，也可以按自己工作路径自行加载；
2.在read.m中修改参考序列，默认为ref.wav,16KHz采样；
3.利用wavdivide.m对所录多组序列文件进行拆分（支持多种采样频率），并按序保证至当前路径；
4.运行tongji.m计算PESQ_MOS得分并通过excel/txt输出至指定路径；

注：对于步骤4,每次执行记得修改excel中输出列位置，如cellnames2=['B',num2str(k+1),':B',num2str(k+1)];，
    指定写入B列，下次执行改为C列，以此类推；
    其中ref_8k.wav为8KHz采样测试序列，ref.wav为16KHz，ref_3s.wav只是为方便测试在ref.wav语音前加3s静音；
    


