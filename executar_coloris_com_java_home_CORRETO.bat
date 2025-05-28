@echo off
echo ===========================================
echo  INICIANDO Coloris - com ajuste JAVA_HOME
echo ===========================================

:: Definindo JAVA_HOME conforme o caminho real informado
set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-21.0.7.6-hotspot

if exist "%JAVA_HOME%\bin\java.exe" (
    echo JAVA_HOME detectado com sucesso em: %JAVA_HOME%
) else (
    echo [ERRO] O caminho %JAVA_HOME% parece invalido.
    echo Verifique se o Java JDK está instalado corretamente.
    pause
    exit /b 1
)

:: Atualizar PATH temporariamente
set PATH=%JAVA_HOME%\bin;%PATH%

:: Executar o jogo
echo Iniciando o jogo Coloris...
gradlew.bat run

echo ===========================================
echo         Jogo encerrado ou falha
echo ===========================================
pause
