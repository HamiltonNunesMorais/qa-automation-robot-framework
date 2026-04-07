@echo off
echo ================================
echo Setting up QA Automation Project
echo ================================

echo Creating virtual environment...
python -m venv venv

echo Activating virtual environment...
call venv\Scripts\activate

echo Upgrading pip...
python -m pip install --upgrade pip

echo Installing dependencies...
pip install -r requirements.txt

echo ================================
echo Setup completed successfully!
echo ================================

pause