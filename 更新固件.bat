@echo off
color 0a
MODE CON COLS=80 LINES=36
title ����������������������������������ע�⣡��������������������������������
echo.
echo.
echo.
echo                 ����������������������������������������������
echo                 ��!!!!!!!!!!!!!!!!!!!ע��!!!!!!!!!!!!!!!!!!!��
echo                 ����������������������������������������������
echo                 �����ԭ����2.0.0��2.5.0�̼���ֻ��ѡ��2���� ��
echo                 �����ԭ����8XX�̼�����Ҫѡ��1��дȫ��      ��
echo                 ��һ���8XX�̼���д����Ҫǿˢ����ס��ť���� ��
echo                 ����������USB��ֱ����д��������ּ��ɣ�     ��
echo                 ��                                          ��
echo                 ��   1����дBootrom  + fullimage            ��
echo                 ��                                          ��
echo                 ��   2��ֻ��дfullimage.elf                 ��
echo                 ��                                          ��
echo                 ��                    By:tssmcu 2016-11-08  ��
echo                 ����������������������������������������������
echo
echo.
echo.
set num=
set /p num= �����롾�豸���������˿ڡ�Proxmark3���Ĵ��ں�(����"5"):

echo.
echo.

set ok=
set /p ok= ��鿴�����桿����ѡ��һ������(1,2):
if "%ok%"=="1" goto :all
if "%ok%"=="2" goto :next

:all
cls
title ������дProxmark3�̼���[2.0.0],��Ⱥ�Ƭ�̡���
echo.
echo                 ��������������������������������������������
echo                 ����ѡ����ˢ�����й̼�������Bootrom��     ��
echo                 ������ˢ�� bootrom.elf,��Ⱥ�Ƭ�̡���     ��
echo                 ��������������������������������������������
echo.
flasher.exe com%num% -b ..\firmware_win\bootrom.elf
ping 127.0.0.1 -n 8 >nul
taskkill /f /im flasher.exe


:next
cls
echo.
echo                 ��������������������������������������������
echo                 ������ˢ�� fullimage.elf,��Ⱥ�Ƭ�̡���   ��
echo                 ��������������������������������������������
echo.
flasher.exe com%num% ..\firmware_win\fullimage.elf
ping 127.0.0.1 -n 3 >nul
taskkill /f /im flasher.exe
cls
title ��ϲProxmark3-2.0.0�̼��ɹ�������
echo.
echo.
echo                ������������������������������������������������
echo                ��     ��ϲ���̼�ȫ��������ɣ�Enjoy it !     ��
echo                ��                                            ��
echo                ������һ�ƣ����紺԰֮�ݣ������䳤����������; ��
echo                ��                                            ��
echo                ������һ�񣬶���ĥ��֮ʯ�������������������! ��
echo                ��                                            ��
echo                ��    Proxmark3-2.0.0�̼��ɹ�������  BinAry   ��
echo                ������������������������������������������������
echo.
pause.
cls
MODE CON COLS=130 LINES=36
cmd.exe
