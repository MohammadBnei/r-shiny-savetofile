# R Shiny server

This is a tiny R shiny server using python too to display the web page

Instruction to run :

```
docker-compose up
```

All the code is inside the app container
app/app.R

You can install additional packages by adding the following inside the Dockerfile :
```
RUN R -e "install.packages('shinythemes', repos = 'http://cran.us.r-project.org')"
```
Made for my Babajoon