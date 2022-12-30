FROM jupyterhub/jupyterhub

RUN apt-get install -y python3 python3-pip

WORKDIR /app-installation/requirements

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

RUN useradd -m -d /home/admin -s /bin/bash admin

WORKDIR /app-installation/configs

COPY jupyter_cfg.py jupyter_cfg.py

EXPOSE 8000

CMD [ "jupyterhub", "-f", "jupyter_cfg.py"]