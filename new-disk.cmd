@echo off & pushd "%~dp0"

Ghost64.exe -clone,mode=load,src="%CD%\gpt-template.GHO",dst=1 -sure

exit

-clone,MODE=(operation),SRC=(source),DST=(destination),[SZE(size),SZE(size)...]

�˲����н�Ϊ���ӣ��Ҹ�����֮�䲻�ܺ��пո����� operation��Ϊ�������ͣ�ֵ��ȡ��copy�����̵����̣�load���ļ������̣�dump�����̵��ļ���pcopy��������������pload���ļ���������pdump���������ļ���

Source ��Ϊ����Դ��ֵ��ȡ���������ţ���1��ʼ������Ϊ�ļ�������Ҫд����·����

Destination ��ΪĿ��λ�ã�ֵ��ȡ���������ţ��� 1��ʼ������Ϊ�ļ�������Ҫд����·����@CDx����¼����x ��ʾ��¼�����������ţ���1��ʼ��

�������˵����

1.�����в�����ghostpe.exe -clone,mode=copy,src=1,dst=2

��ɲ����������ش���1���Ƶ����ش���2��

2.�����в�����ghostpe.exe -clone,mode=pcopy,src=1:2,dst=2:1

��ɲ����������ش���1�ϵĵڶ��������Ƶ����ش���2�ĵ�һ������

3.�����в�����ghostpe.exe-clone,mode=load,src=g:\3prtdisk.gho,dst=1,sze1=450M,sze2=1599M,sze3=2047M

��ɲ�������ӳ���ļ�װ�ش���1��������һ�������Ĵ�С����Ϊ450MB���ڶ�������Ϊ1599MB������������Ϊ2047MB��

4.�����в�����ghostpe.exe -clone,mode=pdump,src2:1:4:6,dst=d:\prt246.gho

��ɲ���������������ѡ��������ӳ���ļ����Ӵ���2��ѡ�����1��4��6��
