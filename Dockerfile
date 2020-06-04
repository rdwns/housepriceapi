FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . flask_app/app.py /app/
COPY . flask_app/requirements.txt /app/


## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
EXPOSE 80

## Step 5:
CMD ["python", "app.py"]
