+++
author = ""
date = 2021-09-10T22:00:00Z
draft = true
tags = []
title = "Instalación de Terraform Linux 64 bit - AWS"

+++
## Solución

Descargue el paquete binario de Terraform apropiado para la máquina virtual del servidor proporcionada (Linux de 64 bits) mediante el comando wget:

    wget -c https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_linux_amd64.zip

Descomprime el archivo descargado:

    unzip terraform_0.13.4_linux_amd64.zip

Coloque el binario de Terraform en el PATH del sistema operativo de la máquina virtual para que el binario sea accesible en todo el sistema para todos los usuarios:

    sudo mv terraform /usr/sbin/

> Nota: Si se le solicita, ingrese el nombre de usuario y la contraseña de tu Linux.

Verifique la información de la versión de Terraform:

    terraform version