# HP-ENVY-X360-15-BP103TX-OC   
## 基于OpenCore引导     
---------------------------------------------   
###  【配置详情】  

*  型号：惠普ENVY X360 15-bp103tx.   
*  CPU：i5-8250U.   
*  内存： 板载4G + 三星16G DDR4.   
*  显卡：intel 620 核显  + MX150(屏蔽).    
*  声卡：ALC295.  

 ---------------------------------------------   
###  【驱动状态】   
#####  键盘 驱动成功  
#####  触摸板 驱动成功  
#####  声卡 驱动成功   
#####  核显 驱动成功      
#####  触摸屏 驱动成功   
#####  DW1820A网卡 驱动成功   

---------------------------------------------   
###  【版本记录】    

#### Ver：1.5  
* 1820A 蓝牙可用（修改驱动加载顺序）

#### Ver：1.4  
*  升级 OpenCore 0.7.7   
*  升级 macOS Monterey  
*  升级 驱动     
*  更改ACPI文件补丁    
*  增加英特尔网卡驱动    
*  驱动1820A网卡  （macOS Monterey 蓝牙驱动失败）  
*  触摸屏驱动成功     
*  增加多种主题    

#### Ver：1.3   
*  升级  OpenCore 0.7.6  
*  基于 0.66 版本升级    
*  升级 驱动   
*  修复启动卡顿 [SOLVED] IOKit Daemon (kernelmanagerd) stall[0], (240s): 'PXSX'   
*  修复启动卡顿 [SOLVED] IOKit Daemon (kernelmanagerd) stall[0], (240s): "BCM2045A0"   
*  修复启动报错appleintellpssi2ccontroller:ftimerservicematching timed out    
*  修改键盘待机恢复时不可用  
*  此版本ACPI文件未做系统区分   
*  此版本是不支持触摸屏驱动    
 
#### Ver：1.2     
*  OpenCore 0.6.6 初始化提交  
*  基于Clover升级 不可启动WIN     

#### Ver：1.1   
*  OpenCore 0.6.6 初始化提交   
*  显示亮度不可调节   
*  触摸屏不可驱动  
*  DW820A完美驱动   
*  睡眠正常（USB设备会重启）     

---------------------------------------------   
###  【随手记】
驱动  | 编译地址  | 文档
 ---- | ----- | ------  
BrcmPatchRAM  | <a href="https://github.com/acidanthera/BrcmPatchRAM" target="_blank">  BrcmPatchRAM</a> | 赞💖
 AirportBrcmFixup  | <a href="https://github.com/acidanthera/AirportBrcmFixup" target="_blank">  AirportBrcmFixup </a> | 赞💖    
VirtualSMC  | <a href="https://github.com/acidanthera/VirtualSMC" target="_blank">  VirtualSMC</a> | 赞💖
VoodooInput  | <a href="https://github.com/acidanthera/VoodooInput" target="_blank">  VoodooInput</a> | 赞💖
AppleALC  | <a href="https://github.com/acidanthera/AppleALC" target="_blank">  AppleALC</a> | 赞💖
WhateverGreen  | <a href="https://github.com/acidanthera/WhateverGreen" target="_blank">  WhateverGreen</a> | 赞💖
Hackintosh-Kext  | <a href="https://github.com/ClayMoreBoy/Hackintosh-Kext-Factory" target="_blank">  Hackintosh-Kext</a> | 赞💖 （黑苹果驱动自动更新全量包）

 ---- | ----- | ------  

---------------------------------------------   
###  【感谢】
##### 感谢大佬提供教程 和 一些配置文件
大佬  | 主页地址  | 文档
 ---- | ----- | ------  
 zenws  | <a href="http://i.pcbeta.com/?19526" target="_blank">  远景论坛</a> | 💖 
 大灰狼  | <a href="http://i.pcbeta.com/?4851405" target="_blank">  远景论坛</a> | 💖   
 黑果小兵的部落阁  | <a href="https://blog.daliansky.net/" target="_blank">  个人博客</a> | 💖 
 ---- | ----- | ------  

