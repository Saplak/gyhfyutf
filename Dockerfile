FROM selenium/standalone-chrome

WORKDIR /app

COPY . /app

USER root

RUN apt-get update && apt-get install python3-distutils -y
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
RUN pip install -r requirements.txt

CMD python3 app.py
