# qa-automation-robot-framework

## v env 
python -m venv venv
venv\Scripts\activate

## libs

pip install robotframework
pip install robotframework-seleniumlibrary
pip install robotframework-requests
pip install webdriver-manager
pip install robotframework-jsonlibrary
pip freeze > requirements.txt
pip install robotframework-faker
pip install robotframework-seleniumlibrary

## run tests 
robot -d results tests/api
and check results

robot tests/api/users/get_user.robot