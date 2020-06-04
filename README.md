[![CircleCI](https://circleci.com/gh/rdwns/housepriceapi.svg?style=svg)](https://circleci.com/gh/rdwns/housepriceapi)

## Project Overview

In this project, I applied the knowledge of Containers & Kubernetes to operationalize a Machine Learning Microservice API.

We are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The data is initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

The flask app running in the file `app.py` serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.


## Technologies

This project uses the following technologies:
* Python version: 3.7
* Flask version: 1.0.2
* Docker version 19.03.11
* Minikube version 1.11.0
* Kubernetes, `kubectl` version 1.18


### Project Tasks



The main goal is to deploy a machine learning microservice to a cluster using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. The main tasks involve:

* Testing of project code using linting

* Creation of a Dockerfile to containerize the application

* Deploy the containerized application using Docker and make a prediction

* Improve the log statements in the source code for the application

* Configure Kubernetes and create a Kubernetes cluster

* Deploy a container using Kubernetes and make a prediction

* Upload a complete Github repo with CircleCI to indicate that code has been tested



---



## Setup the Environment



* Create a virtualenv and activate it

* Install Docker

* Install Kubernetes(kubectl)

```
curl -LO https://storage.googleapis.com/kubernetes-release/release/ `curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
```

* Install Minikube(minikube)
```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
&& sudo install minikube-linux-amd64 /usr/local/bin/minikube
```

* Run `make install` in root directory to install the necessary dependencies


### Containerization Steps


* Setup and Configure Docker locally
* Containerize the app
* Setup and Configure Kubernetes locally using `minikube`
* Run via `kubectl`



### Running `app.py`

1. Standalone: `python app.py`

2. Run in Docker: `./run_docker.sh`

3. Run in Kubernetes: `./run_kubernetes.sh`




### CircleCI Integration

CircleCI uses the `config.yml` file in `.circleci` folder to identify how you want your testing environment set up and what tests you want to run!