@echo off
color 0a
MODE CON COLS=80 
title ����������������������������PM3ָ��̨������������������������������������
echo.
echo.
echo.
echo              ��������������������������������������������������������
echo              ������ָ���б�                                      ��
echo              ��������������������������������������������������������
echo              ��1.hw tune (���ߵ�г��ѹ���ԣ���ð�����������)      ��
echo              ��2.hf 14a reader(����Ƶ��ID�����Ը�Ƶ������)         ��
echo              ��3.hf mf chk 0 A ffffffffffff(���0��A�����Ƿ�Ϊf..) ��
echo              ��4.hf mf mifare (PRNG©���ƽ����룬�ɹ��ʵͣ�486�̼� ��
echo              ��    �������⣬630֮��Ĺ̼�����Щ�������ƣ��п�Щ�� ��
echo              ��    ���߲�����can't slect card��                    ��	
echo              ��5.hf mf nested 1 0 A ffffffffffff(����֪������һ������
echo              ��    �����룬©���ƽ�ȫ�����룬ʾ����0��A����Ϊf..)  ��
echo              ��6.hf mf dump (֪������󣬵����������ݵ��������ļ�) ��
echo              ��7.lf em4x em410xwatch (��ȡ��Ƶ����ǩ����ִ�к�ſ�)��
echo              ��8.hw version(��ʾ�̼���Ϣ)                          ��
echo              ��                                                    ��
echo              ��    ����ָ����ο�wiki.radiowar.org                 ��
echo              ��                                                    ��
echo              ��������������������������������������������������������

echo.
echo.

set num=
set /p num= �����롾�豸���������˿ڡ�Proxmark3���Ĵ��ں�(����com5�����롰5��):



Proxmark3 /com%num%

pause.