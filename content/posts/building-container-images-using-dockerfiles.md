+++
author = ""
date = ""
draft = true
tags = []
title = "Building Container Images Using Dockerfiles"

+++
¡Hola a todos! En este Hands-on lab les enseñaré como construir una imagen Docker a partir de un archivo Dockerfile todo en un paso a paso muy sencillo. Crearemos varias versiones de la imagen a utilizar para entender mejor el funcionamiento de las capas en Docker. Una vez el contenedor se encuentre arriba y corriendo, vamos a exponerlo a la web y comprobar su acceso por medio del navegador.

**Requisitos:** 

* Disponer de una VM local o remote con acceso ssh (en mi caso estoy  usaré GCP como Cloud Provider);
* Docker instalado (version 20.10.11 o superior);
* [Descargar](https://www.free-css.com/assets/files/free-css-templates/download/page274/sync.zip) web template de demostración;

## Paso a Paso

Log in to the server using the credentials provided:

    ssh cloud_user@<PUBLIC_IP_ADDRESS>

### Build a First Version

 1. Change to the `widget-factory-inc` directory:

        cd widget-factory-inc
 2. Create a Dockerfile that uses `httpd:2.4` as the base image:

        vim Dockerfile
 3. In the new file, insert the following:

        FROM httpd:2.4
        RUN apt update -y && apt upgrade -y && apt autoremove -y && apt clean && rm -rf /var/lib/apt/lists*
 4. Save the file:

        ESC
        :wq
 5. Verify that the file was saved successfully:

        cat Dockerfile
 6. Build the `0.1` version of the `widgetfactory` image using the Dockerfile:

        docker build -t widgetfactory:0.1 .
 7. Set variables to examine the image's size and layers:

        export showLayers='{{ range .RootFS.Layers }}{{ println . }}{{end}}'
        
        export showSize='{{ .Size }}'
 8. Compare the `httpd` and `widgetfactory` images:

        docker images
 9. Show the `widgetfactory` image's size:

        docker inspect -f "$showSize" widgetfactory:0.1
10. Show the layers:

        docker inspect -f "$showLayers" widgetfactory:0.1
11. Show the layers of the `httpd:2.4` image:

        docker inspect -f "$showLayers" httpd:2.4
12. Compare the layers. Are they the same?

### Load the Website into the Container

 1. Open the `Dockerfile`:

        vim Dockerfile
 2. Remove the Apache welcome page from the image by adding the following:

        RUN rm -f /usr/local/apache2/htdocs/index.html
 3. Save the file:

        ESC
        :wq
 4. Build version `0.2` of the widgetfactory image:

        docker build -t widgetfactory:0.2 .
 5. Inspect both versions of the `widgetfactory` image to see the differences in size and layers:

        docker images
 6. Show the `widgetfactory:0.1` image's size:

        docker inspect -f "$showSize" widgetfactory:0.1
 7. Compare it to the image size for `widgetfactory:0.2`:

        docker inspect -f "$showSize" widgetfactory:0.2
 8. Using an interactive terminal, check the `htdocs` folder for `widgetfactory:0.2`. Are the website files in the folder?:

        docker run --rm -it widgetfactory:0.2 bash
        
        ls htdocs
 9. Exit the container:

        exit
10. Show the layers for the `widgetfactory:0.1` image:

        docker inspect -f "$showLayers" widgetfactory:0.1
11. Show the layers for the `widgetfactory:0.2` image and compare the two:

        docker inspect -f "$showLayers" widgetfactory:0.2
12. Open the Dockerfile:

        vim Dockerfile
13. Add the website data to the container by adding the following to the end of the file:

        WORKDIR /usr/local/apache2/htdocs
        COPY ./web .
14. Save the file:

        ESC
        :wq
15. Build version `0.3` of the widgetfactory image:

        docker build -t widgetfactory:0.3 .
16. Inspect versions `0.2` and `0.3` to see the differences in size and layers:

        docker images
17. Show the `widgetfactory:0.2` image's size:

        docker inspect -f "$showSize" widgetfactory:0.1
18. Compare it to the image size for `widgetfactory:0.3`:

        docker inspect -f "$showSize" widgetfactory:0.2
19. Show the layers for the `widgetfactory:0.2` image:

        docker inspect -f "$showLayers" widgetfactory:0.1
20. Show the layers for the `widgetfactory:0.3` image and compare the two:

        docker inspect -f "$showLayers" widgetfactory:0.2
21. Using an interactive terminal, check the `htdocs` folder for `widgetfactory:0.3`:

        docker run --rm -it widgetfactory:0.3 bash
22. Are the website files in the folder?:

        ls -l

### Run a Container from the Image

1. Run a container from the `widgetfactory:0.3` image. What commmand does it use to run the server? Remember to publish the web server port:

       docker run --name web1 -p 80:80 widgetfactory:0.3
2. Exit the container:

       CTRL+C
3. Check the status of the container:

       docker ps -a
4. Start the container:

       docker start web1
5. Using `docker exec` connect to the `web1` container:

       docker exec -it web1 bash
6. View the website files in the container:

       ls -l
7. Exit the container:

       exit
8. Retrieve the main website page from the container:

       wget localhost
9. Compare it to the copy on the server:

       diff index.html web/index.html