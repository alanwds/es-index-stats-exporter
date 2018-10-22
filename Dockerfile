FROM python:2.7

ADD es-index-stats-exporter.py /

RUN pip install prometheus_client
RUN pip install requests 

CMD [ "python", "./es-index-stats-exporter.py" ]
