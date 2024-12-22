FROM dc4warrior/mltbs:latest 

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN python3 -m venv clinton

COPY requirements.txt .
RUN clinton/bin/pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
