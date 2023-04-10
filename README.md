ITGT521_Computer-Vision-All Assignments
Name: Yifan Li(EVAN) Student ID: 6537394
For this assignment：
-------------------------------------------------------> Prepare 准备

Softwares:

     Anaconda3              (https://www.anaconda.com/products/distribution)
     Colab                  (https://colab.research.google.com/)
     DarkLabe               (https://github.com/darkpgmr/DarkLabel)
     Kinect SDK             (https://www.microsoft.com/en-us/download/details.aspx?id=44561)
     OpenNI SDK             (https://structure.io/openni)
     Nite                   (http://www.openni.org/files/nite/)
     Processing Library     (http://code.google.com/p/simple-openni/downloads/list)


Tools:

     Webcam
     Kinect

-------------------------------------------------------> Installation Tutorial Reference 安装参考教程

Form: https://social.msdn.microsoft.com/Forums/windowsdesktop/en-US/bae80fb0-fce5-468e-a292-fe46381af3e5/how-to-install-openni-22-nite-22-kinect-sdk-18-windows-7-3264-bit?forum=kinectsdk

     Youtube Guide https://www.youtube.com/watch?v=m5uTH3S9P9g
     Guideline How to Install OpenNI 2.0 + Nite 2.0 + Kinect SDK 1.8 + windows 7 32/64 bit

     Kinect Installation Guide Document[ View / Download]
     https://docs.google.com/file/d/0B3e4_6C5_YOjcmZpak12Q2MyZHM/edit 

     Kinect Installation Video [download]
     https://drive.google.com/file/d/0B3e4_6C5_YOjQjRXMUNnNW5xN3M/edit?usp=sharing

 Step 1

     Download File Required
     Kinect SDK 1.8  
     Web ~ http://www.microsoft.com/en-us/kinectforwindows/develop/developer-downloads.aspx

     Kinect Developer Toolkits 1.8 ~ https://drive.google.com/file/d/0B3e4_6C5_YOjaW85QzVKR2lYVkU/edit?usp=sharing
     KinectRuntime 1.8 ~ https://drive.google.com/file/d/0B3e4_6C5_YOjS1dGdHcwMjJGWDQ/edit?usp=sharing
     Kinect SDK 1.8 ~ https://drive.google.com/file/d/0B3e4_6C5_YOjeUowcDhUNmRMV0U/edit?usp=sharing

     OpenNI 2.2  32bits / 64bits
     http://www.openni.org/openni-sdk/
     or
     http://structure.io/openni

     OpenNi 32 bit ~ https://drive.google.com/file/d/0B3e4_6C5_YOjMS1EQWh6VFhWbnc/edit?usp=sharing
     OpenNi 64 bit ~ https://drive.google.com/file/d/0B3e4_6C5_YOjYmVPQzhwazhBOUE/edit?usp=sharing

     Nite 2.2 
     http://www.openni.org/files/nite/

     Nite 32 bit ~ https://drive.google.com/file/d/0B3e4_6C5_YOjQWtCcVl3VnRsWG8/edit?usp=sharing
     Nite 64 bit ~https://drive.google.com/file/d/0B3e4_6C5_YOjOGIySEluYkNibEE/edit?usp=sharing

 Step 2
 
     a. Install Kinect for Windows SDK
     b. Install OpenNI 2.2 SDK  32bits / 64bits  ( install both 64 bits and 32bits if u are using win64)
     c. Install  Nite 2.2  ( install both 64 bits and 32bits if u are using win64)

 Step 3

     Run NiViewer.exe for Testing.  It will be located at

     64bits 
     ~ (OpenNI ) C:\Program Files\OpenNI2\Samples\Bin
     ~ (Prime Sensor) C:\Program Files\PrimeSense\NiTE2\Samples\Bin

     32bits 
     ~(OpenNI )  C:\Program Files (x86) \OpenNI2\Samples\Bin
     ~ (Prime Sensor) C:\Program Files (x86) \PrimeSense\NiTE2\Samples\Bin


 Programmer Guide
 
     http://www.openni.org/openni-programmers-guide/  
     
     
-------------------------------------------------------> Software Basic Operation 软件基础操作

 Anaconda Prompt (anaconda3)

     打开软件:
     cd C:\Users\78089\anaconda3\code

     activate python3

     jupyter notebook
     
 Google Colab
     
     记得修改硬件加速器类型为GPU
     修改 ---> 笔记本设置 ---> 硬件加速器类型 ---> GPU

     链接项目到Google Drive:
     from google.colab import drive drive.mount('/content/drive')

     更改项目地址: 
     %cd /content/drive/MyDrive/Colab Notebooks

 ===========================================  Preview  ===========================================
 
 Week1:
 
![Image text](https://raw.githubusercontent.com/EVAN-LI98/Image-Save-Folder/main/Pictures/ITGT523/week1_1.png?token=GHSAT0AAAAAACBG3QRI4SKGV74PLQNEP7AUZBUPJLA)
![Image text](https://raw.githubusercontent.com/EVAN-LI98/Image-Save-Folder/main/Pictures/ITGT523/week1_3.png?token=GHSAT0AAAAAACBG3QRJMTEDLSQ4463IOJSYZBUPKHQ)
![Image text](https://raw.githubusercontent.com/EVAN-LI98/Image-Save-Folder/main/Pictures/ITGT523/week1_2.png?token=GHSAT0AAAAAACBG3QRIXRKCWPE6BDQ6KIICZBUPJXQ)
 
 Week2:
 
![Image text](https://raw.githubusercontent.com/EVAN-LI98/Image-Save-Folder/main/Pictures/ITGT523/week2_1.png?token=GHSAT0AAAAAACBG3QRJB2WTWP5ISJ6AXIT6ZBUPKYA)

 Week3:
 
![Image text](https://github.com/EVAN-LI98/Image-Save-Folder/blob/main/Pictures/ITGT523/week3_1_1.png?raw=true)
![Image text]()
