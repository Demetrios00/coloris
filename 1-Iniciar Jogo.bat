@echo off
echo ===========================================
echo  INICIANDO Coloris - com JDK 17 definido
echo ===========================================

:: Define JAVA_HOME conforme informado
set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.0.15.6-hotspot

if exist "%JAVA_HOME%\bin\java.exe" (
    echo JAVA_HOME detectado com sucesso em: %JAVA_HOME%
) else (
    echo [ERRO] O caminho %JAVA_HOME% parece invalido.
    echo Verifique se o Java JDK 17 esta instalado corretamente.
    pause
    exit /b 1
)

:: Atualiza PATH temporariamente
set PATH=%JAVA_HOME%\bin;%PATH%

:: Executa o jogo Coloris
echo Iniciando o jogo Coloris com JDK 17...
gradlew.bat run

echo ===========================================
echo         Jogo encerrado ou finalizado
echo ===========================================
pause
