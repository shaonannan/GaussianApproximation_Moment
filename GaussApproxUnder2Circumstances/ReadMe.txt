此文件夹编辑于laptop，运行环境Windows 10，Python 3.6， Anaconda 3.6， Spyder

该文件夹目前包含两部分，
1 运用Gaussian Approximation以及Exact Evolution对Rotating Drifting-grating刺激下的Moment Evolution进行仿真，结果包含于子文件夹GaussianApproximationblablabla
2 运用Gaussian Approximation以及Exact Evolution对Line-motion-illusion刺激下的Moment Evolution进行仿真，结果包含于子文件LMI_Moment_Gaussianblablablazhong 

此代码增加更改及更新为：
a Combine Gaussian Approximation and Exact Evolution, 其中Gaussian Approximation采用Normalized Distribution，同时需要注意Sigma-square equals to （2nd-Moment - 1st Moment-square）
b 设置选择标志self.USUALorGauss, 等于1代表USUAL（former），运用Exact Evolution， 等于0代表GaussApprox，运用Gaussian Approximation
c Gaussian Approximation与Exact Evolution的区别主要在于： 1，求1st/2nd/3rd/4th-Moment上，这点主要表现在IgnoreTinyFR算法中，去掉FR项；2，求RHOV/EQ中；3，求firing-rate中
d 注意在进行Update整体过程中，一旦出现类似singular value等bad results，则全部扔给Exact Evolution进行处理