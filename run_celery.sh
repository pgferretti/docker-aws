#!/bin/sh
 
cd docrabitt
# run Celery worker for our project myproject with Celery configuration stored in Celeryconf
su -m myuser -c "celery worker -A docrabitt.celeryconf -Q default -n default@%h"