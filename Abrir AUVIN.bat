@echo off
rem Abre la pagina de AUVIN en la compu, con los frascos 3D funcionando.
rem (Con doble clic sobre index.html el navegador no deja armar el 3D.)
cd /d "%~dp0"
start "" http://localhost:8768/
python -m http.server 8768 --bind 127.0.0.1
