@echo off
REM Setup script for Quantum Teleportation with Qiskit (Windows)
REM Run this file to create a virtual environment and install all dependencies

echo ================================
echo Quantum Teleportation Setup
echo ================================
echo.

REM Check if Python 3 is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo Error: Python 3 is not installed. Please install Python 3.8 or higher.
    pause
    exit /b 1
)

for /f "tokens=2" %%i in ('python --version 2^>^&1') do set PYTHON_VERSION=%%i
echo Found Python %PYTHON_VERSION%
echo.

REM Create virtual environment
echo Creating virtual environment...
python -m venv venv

REM Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate.bat

REM Upgrade pip
echo Upgrading pip...
python -m pip install --upgrade pip

REM Install requirements
echo.
echo Installing dependencies...
pip install -r requirements.txt

echo.
echo ================================
echo Setup complete!
echo ================================
echo.
echo To activate the virtual environment, run:
echo   venv\Scripts\activate.bat
echo.
echo To deactivate, run:
echo   deactivate
echo.
echo To start Jupyter, run:
echo   jupyter notebook
echo.
pause
