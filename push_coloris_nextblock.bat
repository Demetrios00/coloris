@echo off
echo === Iniciando push do projeto Coloris com nextBlock ===

cd /d %~dp0

:: Verificar se dentro da pasta do projeto clonado
if not exist ".git" (
    echo [ERRO] Esta pasta nao parece ser um repositório Git.
    pause
    exit /b 1
)

echo Verificando modificações...
git status

echo Adicionando arquivos modificados...
git add .

echo Criando commit...
git commit -m "feat: adiciona pré-visualização do próximo bloco (nextBlock)"

echo Enviando alterações para o GitHub (branch master)...
git push origin master

echo === Processo concluído com sucesso ===
pause
