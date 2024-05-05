FROM python:3.9.13 
COPY c:\Users\91999\OneDrive\Desktop\Cloud\House_Priceprediction\ venv 
WORKDIR c:\Users\91999\OneDrive\Desktop\Cloud\House_Priceprediction\venv
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app