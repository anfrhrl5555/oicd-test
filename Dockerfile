FROM 192.168.0.6:5000/python:3.9

RUN apt-get update &&  apt-get -y install vim && apt-get -y install telnet && apt-get -y install nfs-common

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

#RUN pip install pymysql

COPY . .

CMD ["python", "./helloworld.py"]

