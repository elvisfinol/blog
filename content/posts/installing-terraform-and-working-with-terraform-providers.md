+++
author = ""
date = 2021-09-10T22:00:00Z
draft = true
tags = []
title = "Instalación de Terraform Linux 64 bit - AWS"

+++
### Solución

Descargue el paquete binario de Terraform apropiado para la máquina virtual del servidor proporcionada (Linux de 64 bits) mediante el comando wget:

    wget -c https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_linux_amd64.zip

Descomprime el archivo descargado:

    unzip terraform_0.13.4_linux_amd64.zip

Coloque el binario de Terraform en el PATH del sistema operativo de la máquina virtual para que el binario sea accesible en todo el sistema para todos los usuarios:

    sudo mv terraform /usr/sbin/

> Nota: Si se le solicita, ingrese el nombre de usuario y la contraseña de tu Linux.

Verifique la información de la versión de Terraform:

    terraform version

Si  devuelve la versión de Terraform, ha validado que el binario de Terraform está instalado y funciona correctamente. 

### Clonar sobre código para proveedores de Terraform

Cree un directorio de proveedores:

    mkdir providers

Pasar al directorio de proveedores:

    cd providers/

Cree el archivo main.tf:

    vim main.tf

Pegue el siguiente código proporionado

    provider "aws" {
      alias  = "us-east-1"
      region = "us-east-1"
    }
    
    provider "aws" {
      alias  = "us-west-2"
      region = "us-west-2"
    }
    resource "aws_sns_topic" "topic-us-east" {
      provider = aws.us-east-1
      name     = "topic-us-east"
    }
    
    resource "aws_sns_topic" "topic-us-west" {
      provider = aws.us-west-2
      name     = "topic-us-west"
    }

Para guardar y salir del archivo, presione Escape e ingrese: wq!

### Implementar el código con Terraform Apply

Habilite el registro de salida detallado para los comandos de Terraform usando TF_LOG = TRACE:

    export TF_LOG=TRACE

Nota: Puede desactivar el registro detallado en cualquier momento mediante el comando export TF_LOG =.

Inicialice el directorio de trabajo donde se encuentra el código:

    terraform init

Revise las acciones realizadas cuando implementa el código Terraform:

    terraform plan

Nota: Se crearán dos recursos, de acuerdo con los proveedores que se configuraron en el fragmento de código proporcionado.

Implementa el código:

    terraform apply

Cuando se le solicite, escriba YES y presione Enter.

Verifica que se hayan creado dos recursos con sus ID de nombre de recursos de Amazon (ARN) correspondientes en la región en la que se activaron.

Opcionalmente, verifique que los recursos se crearon en sus respectivas regiones dentro de la Consola de administración de AWS

Elimina la infraestructura que acaba de crear:

    terraform destroy --auto-approve