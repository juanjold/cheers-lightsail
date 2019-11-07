FROM python:3.6
COPY . /app/cheers-webservice
WORKDIR /app/cheers-webservice
RUN pip install -r requirements.txt
EXPOSE 5000
#CMD python3 server.py 
CMD gunicorn -w 4 -b 0.0.0.0:5000 wsgi:application --reload