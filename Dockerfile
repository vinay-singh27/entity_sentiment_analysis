# base image
FROM python:3

# setup work dir
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# install requriement.txt
RUN pip install -r requirements.txt
RUN python -m spacy download en_core_web_lg

EXPOSE 8080

# run the start command 
CMD ["python", "./app_main.py" ]
