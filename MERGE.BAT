@ECHO OFF
REM �����o�b�`�t�@�C���Fdiv2.exe �ɂ�萶��

ECHO �������ꂽ�t�@�C���𕜌����܂�

IF NOT EXIST "activiti-6.0.0.001"  GOTO ERR1
IF NOT EXIST "activiti-6.0.0.002"  GOTO ERR1
IF NOT EXIST "activiti-6.0.0.003"  GOTO ERR1
IF     EXIST "activiti-6.0.0.zip"  GOTO ERR2

COPY "activiti-6.0.0.001" "activiti-6.0.0.zip"
IF ERRORLEVEL 1 GOTO ERR3
COPY /B "activiti-6.0.0.zip"+"activiti-6.0.0.002"+"activiti-6.0.0.003"
IF ERRORLEVEL 1 GOTO ERR3

DEL "activiti-6.0.0.001"
DEL "activiti-6.0.0.002"
DEL "activiti-6.0.0.003"


REN "activiti-6.0.0.zip" "activiti-6.0.0.zip"

ECHO ���̃o�b�`�t�@�C���������Ă�������
GOTO END

:ERR1
ECHO �t�@�C�����ꕔ���݂��܂���
ECHO �����𒆎~���܂�
GOTO END

:ERR2
ECHO ������̃t�@�C�������ɑ��݂��Ă��܂�
ECHO �����𒆎~���܂�
GOTO END

:ERR3
ECHO �����Ɏ��s���܂���
ECHO �����𒆎~���܂�
GOTO END

:END
ECHO �I������ɂ́A�����L�[�������Ă�������
PAUSE >NUL
