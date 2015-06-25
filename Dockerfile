# use base python image with python 2.7
FROM python:2.7
 
# add requirements.txt to the image
ADD requirements.txt /var/app/requirements.txt
 
# set working directory to /app/
WORKDIR /var/app/
 
# install python dependencies
RUN pip install -r requirements.txt
 
# create unprivileged user
RUN adduser --disabled-password --gecos '' myuser

# Run
CMD ["fig up"]