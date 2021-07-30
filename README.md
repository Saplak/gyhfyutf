## DevSecOps & DevOps Repository

Here, I've created this repository to show my Pipeline for each case.

|**Index**
|:---
|[WebApplication](#webapplication)|
|[DevSecOps](#devsecops)|
|[DevOps](#devops)|

## WebApplication

I've created a simple web application (app.py) using Flask, just to understand how the pipeline is going to interpret that (**/?celsius** and **/script**).
So, inside the WebApp, we have two routers that can be explore and see what can happen, like produce a XSS.
Enjoy it. 😄


<img src="/uploads/2cb66cb4db6f9f9627d244b588acae6d/Captura_de_Tela_2021-07-29_às_20.50.44.png"  width="450" height="200">

<img src="/uploads/94422cbad0523cdd67c8d4a60e6f5eb6/Captura_de_Tela_2021-07-29_às_20.51.00.png"  width="450" height="200">


## DevSecOps

Here, I have the webapp that is validating for my secure pipeline. So, I've a gitlab-ci.yml to run specfics test in my pipeline, like SAST, DAST, Libraries. Just to Python environment.

Also, I've a specfic folder, to create a Docker image for use Devskim. Devskim is very important to automated code review.

## To run

To run the app, you just have to write that:

```pip3 intall -r requirements.txt ```

```python3 app.py```

You can create a image with Docker file too, using this:

```docker build -t myapp .```

## DevOps

Here, I have a specfic folder - **test**- to put my test case, using Selenium and I also created a image for this environment to test in my local pipeline.
I also have a Jenkins file inside, to create a pipeline and connect these stages: build, deploy and test (with selenium).
