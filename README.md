# This model attempts to predicts the next recession

IMPORTANT: If your environment has not been set up yet, start from 1, otherwise continue. 

NOTICE: You must download ALL data locally and manually. You can't push the data to git because the data's size is too large. 'GemDataEXTR' is the name of the folder. DO NOT CHANGE THE NAME! Keep as is.

# 1. Setting up your environment

### Prerequisites

Python 3.12 installed?   
Yes, continue.  
No, install via 'https://www.python.org/downloads/release/python-3120/'

Pip installed?  
Yes, continue.  
No, install via cmd line for windows:  
```
python -m ensurepip --upgrade
```  

### Setting up python virtual environment and activating it  

#### Setting up in Windows

1. Create venv(virtual environment) folder:
```
python -m venv venv
```

2.a) Activate virtual environment in cmd (w/out ubuntu):
```
venv\Scripts\activate
```  
### OR  
  
2.b) Activate virtual environement in powershell (w/out ubuntu):
```
.\venv\Scripts\Activate.ps1
```  

If you get a “execution policy” error in PowerShell, run:
```
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```  
Then go back to step 1 under windows.

Your terminal should have something like:
```
((venv) ) ben@Benjamins-MacBook-Pro predicting-next-recession 
```  

Continute to "Download Dependencies"  

#### Linux/Ubuntu/Mac

1. Create venv(virtual environment) folder:
```
python3.12 -m venv venv
```  

2. Activate venv:
```
source venv/bin/activate
```  

Your terminal should have something like:
```
((venv) ) ben@Benjamins-MacBook-Pro predicting-next-recession 
```  

#### Download all dependencies

Windows/Mac/Linux/Ubuntu:
```
pip install -r requirements.txt
```  

If you download other dependencies please run:
```
pip freeze > requirements.txt
```

#### You should be all good to go!
