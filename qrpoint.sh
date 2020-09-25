#Exemplo de utilização:

#1. Em primeiro lugar é necessário criar um novo volume, caso não possua um.
$ docker volume create data

#2. Então vamos criar um container anexando o volume.
$ docker run -it --rm --mount source=data,target=/NOVO/input --entrypoint bash qrpoint-delft-novo:dev

#Nesse caso, a pasta /NOVO/input do container será inicializada com o conteúdo do volume data.

#3. É importante dizer que esse mesmo volume pode ser anexado simultaneamente a quantos containers forem necessários, por exemplo:

$ docker run -it --rm --mount source=data,target=/NOVO/input --name container1 --entrypoint bash qrpoint-delft-somc:dev
$ docker run -it --rm --mount source=data,target=/NOVO/input --name container2 --entrypoint bash qrpoin-delft-somc:dev
$ docker run -it --rm --mount source=data,target=/NOVO/input --name container3 --entrypoint bash qrpoint-delft-somc:dev

#Essa é uma boa forma de conseguir que containers diferentes possam comunicar diretamente arquivos.
