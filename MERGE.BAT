@ECHO OFF
REM 結合バッチファイル：div2.exe により生成

ECHO 分割されたファイルを復元します

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

ECHO このバッチファイルも消してください
GOTO END

:ERR1
ECHO ファイルが一部存在しません
ECHO 処理を中止します
GOTO END

:ERR2
ECHO 復元先のファイルが既に存在しています
ECHO 処理を中止します
GOTO END

:ERR3
ECHO 復元に失敗しました
ECHO 処理を中止します
GOTO END

:END
ECHO 終了するには、何かキーを押してください
PAUSE >NUL

