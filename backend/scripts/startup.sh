#!/bin/bash

python manage.py migrate --noinput

waitress-serve --port=$PORT non_super_user_test_100.wsgi:application
