caffe-fast-rcnn-CPU
=========
Requirements
---------
> Ubuntu18.04   
> gcc-5.5            
> g++-5.5  
> cudn9.0  
> cudnn7.4  
> opencv3.4   
> matlab2017a   
> protobuf2.6.1

                
Source file
---------
[caffe](https://github.com/BVLC/caffe)  
[caffe-fast-rcnn](https://github.com/rbgirshick/caffe-fast-rcnn/tree/faster-rcnn-upstream-33f2445)  
[faster-rcnn-cpu](https://github.com/neuleaf/faster-rcnn-cpu)  

Directory file
---------
### 1.caffe-fast-rcnn(CPU)    
>Just compile it using the following command：    
>sudo make all -j16     
>sudo make test -j16    
>sudo make pycaffe     
>sudo make matcaffe -j16    
>sudo make mattest -j16    
### 2.caffe_to_fast_rcnn(cpu)     
>If you don't want to download caffe,You can copy files to your corresponding path from 'caffe_to_fast_rcnn(cpu)' to 'caffe-fast-rcnn'.      
### 3.caffe-fast-rcnn-compile.sh    
>caffe-fast-rcnn-compile.sh     
     
#### (1)make all -j16      
> root@gmt-ThinkPad-T470p:/home/gmt/caffe-fast-rcnn# sudo make all -j16     
> PROTOC src/caffe/proto/caffe.proto       
> NVCC src/caffe/layers/relu_layer.cu      
> ...................................        
> CXX/LD -o .build_release/examples/mnist/convert_mnist_data.bin       

#### (2)make test -j16         
> root@gmt-ThinkPad-T470p:/home/gmt/caffe-fast-rcnn# sudo make test -j16       
> ....................................          
> CXX/LD -o .build_release/test/test_all.testbin src/caffe/test/test_caffe_main.cpp    
    
#### (3)make make pycaffe      
> root@gmt-ThinkPad-T470p:/home/gmt/caffe-fast-rcnn# sudo make pycaffe    
> ....................................         
> PROTOC (python) src/caffe/proto/caffe.proto     

#### (4)make make matcaffe -j16      
> root@gmt-ThinkPad-T470p:/home/gmt/caffe-fast-rcnn# sudo make matcaffe -j16   
> MEX matlab/+caffe/private/caffe_.cpp   
> MEX 已成功完成。

#### (5)make make mattest -j16      
> root@gmt-ThinkPad-T470p:/home/gmt/caffe-fast-rcnn# sudo make mattest -j16      
> Cleared 2 solvers and 4 stand-alone nets           
> ans =      
> 1×7 TestResult 数组 - 属性:   
 
    Name     
    Passed     
    Failed   
    Incomplete   
    Duration   
    Details   
    
> 总计:    
>    7 Passed, 0 Failed, 0 Incomplete.    
>    0.50392 秒测试时间。     
### 4.install_script
     

Reference
---------
1.[Ubuntu18.04 install](https://blog.csdn.net/zr459927180/article/details/51627910)      
2.[gcc-5/g++-5 and gcc-7/g++-7 compatible install](https://blog.csdn.net/geng333abc/article/details/80151937)        
3.[nvidia390 drivers,cuda9.0,cudnn7.4](https://zhuanlan.zhihu.com/p/36610043)       
4.[ubuntu+cuda9.0+cudnn7+opencv+matlab+caffe](https://blog.csdn.net/maqing9479/article/details/79103520)       
5.[opencv install](https://blog.csdn.net/weixin_40298200/article/details/79664225) and [opencv uninstall](https://blog.csdn.net/qq_29229045/article/details/78527391#commentBox)     
6.[matlab2017a](https://blog.csdn.net/u011713358/article/details/69659265)      
7.[protobuf error same as #5078 tsing-cv](https://github.com/BVLC/caffe/issues/5078)   and [protobuf install by reading the README file in protobuf-2.6.0](https://github.com/protocolbuffers/protobuf/releases/download/v2.6.0/protobuf-2.6.0.tar.gz)  
8.[caffe](https://blog.csdn.net/maqing9479/article/details/79103520)       

<---------------------------------------wait for update------------------------------------------->      
  
