@echo off
color 0a
MODE CON COLS=80

set dump=
set /p dump= ������dump�������ݵ��ļ���������dumpdata.bin��:
bin2text.py %dump% %dump%.eml
pause
