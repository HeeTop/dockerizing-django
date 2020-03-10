FROM python:3.7.3

ENV MY_APP_NAME=app
# set work directory
WORKDIR /usr/src/$MY_APP_NAME

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies
RUN apt-get update \
    && apt-get install -y postgresql gcc python3-dev musl-dev \
    && apt install -y netcat

# install dependencies
RUN python -m pip install --upgrade pip
COPY ./requirements.txt /usr/src/$MY_APP_NAME/requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY . /usr/src/$MY_APP_NAME/

# run entrypoint.sh
ENV ENTRYPOINT_FILE_PATH=/usr/src/$MY_APP_NAME/entrypoint.sh
ENTRYPOINT ["sh", "-c", "echo $ENTRYPOINT_FILE_PATH"]