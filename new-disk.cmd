@echo off & pushd "%~dp0"

Ghost64.exe -clone,mode=load,src="%CD%\gpt-template.GHO",dst=1 -sure

exit

-clone,MODE=(operation),SRC=(source),DST=(destination),[SZE(size),SZE(size)...]

此参数行较为复杂，且各参数之间不能含有空格。其中 operation意为操作类型，值可取：copy：磁盘到磁盘；load：文件到磁盘；dump：磁盘到文件；pcopy：分区到分区；pload：文件到分区；pdump：分区到文件。

Source 意为操作源，值可取：驱动器号，从1开始；或者为文件名，需要写绝对路径。

Destination 意为目标位置，值可取：驱动器号，从 1开始；或者为文件名，需要写绝对路径；@CDx，刻录机，x 表示刻录机的驱动器号，从1开始。

下面举例说明：

1.命令行参数：ghostpe.exe -clone,mode=copy,src=1,dst=2

完成操作：将本地磁盘1复制到本地磁盘2。

2.命令行参数：ghostpe.exe -clone,mode=pcopy,src=1:2,dst=2:1

完成操作：将本地磁盘1上的第二分区复制到本地磁盘2的第一分区。

3.命令行参数：ghostpe.exe-clone,mode=load,src=g:\3prtdisk.gho,dst=1,sze1=450M,sze2=1599M,sze3=2047M

完成操作：从映像文件装载磁盘1，并将第一个分区的大小调整为450MB，第二个调整为1599MB，第三个调整为2047MB。

4.命令行参数：ghostpe.exe -clone,mode=pdump,src2:1:4:6,dst=d:\prt246.gho

完成操作：创建仅含有选定分区的映像文件。从磁盘2上选择分区1、4、6。
