## DevSecOps & DevOps Repository

Here, I've created this repository to show my Pipeline for each case.

|**Index**
|:---
|[WebApplication](#webapplication)|
|[DevSecOps](#devsecops)|
|[DevOps](#devops)|

## WebApplication

I've created a simple web application (app.py) using Flask, just to understand how the pipeline is going to interpret that (/?celsius and /script).
So, inside the WebApp, we have two routers that can be explore and see what can happen, like produce a XSS.
Enjoy it. 😄

## DevSecOps

Here, I have the webapp that is validating for my secure pipeline. So, I've a gitlab-ci.yml to run specfics test in my pipeline, like SAST, DAST, Libraries. Just to Python environment.

Also, I've a specfic folder, to create a Docker image for use Devskim. Devskim is very important to automated code review.

## DevOps

Here, I have a specfic folder - test- to put my test case, using Selenium and I also created a image for this environment to test in my local pipeline.
I also have a Jenkins file inside, to create a pipeline and connect these stages: build, deploy and test (with selenium).
