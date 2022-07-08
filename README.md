## DevSecOps :)  - case       
 
Here, I've created this repository to show our case.

|**Index**
|:---
|[WebApplication](#webapplication)|
|[DevSecOps](#devsecops)|
|[Arquitecture](#arquitecture)|


## WebApplication

I've created a simple web application (app.py) using Flask, just to understand how the pipeline is going to interpret that (**/?celsius** and **/script**).
So, inside the WebApp, we have two routers that can be explore and see what can happen, like produce a XSS.
Enjoy it. 😄


<img src="/uploads/ecd9cd1cb8b8e01f6b48089618a67b92/image.png"  width="450" height="200">

<img src="/uploads/40bf321a8cde80409532928d975cc364/image.png"  width="450" height="200">


## DevSecOps

Here, I have the webapp that is validating for my secure pipeline. So, I've a gitlab-ci.yml to run specfics test in my pipeline, like SAST, DAST, Libraries. Just to Python environment.

Also, I've a specfic folder, to create a Docker image for use Devskim. Devskim is very important to automated code review.

## To run

To run the app, you just have to write that:

```pip3 intall -r requirements.txt ```

```python3 app.py```

You can create a image with Docker file too, using this:

```docker build -t myapp .```

## Arquitecture

<img src="/uploads/cff675b3ba8de6936832889976926e8e/image.png"  width="450" height="400">

