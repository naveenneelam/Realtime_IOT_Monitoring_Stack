FROM python:3.5.8-stretch
RUN pip3 install jupyter flask flask_restful pymongo flask_monitoringdashboard flask_limiter bson influxdb
EXPOSE 5000
EXPOSE 8888
EXPOSE 8889
WORKDIR /root/
CMD jupyter notebook --allow-root --port 8888 --ip 0.0.0.0
