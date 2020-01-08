FROM ubuntu
COPY . usr/scr/app/
WORKDIR usr/scr/app
RUN apt-get -yq  update && apt-get install -yq python-pip python-dev

RUN pip install -r requirements.txt

ENTRYPOINT python runserver.py

