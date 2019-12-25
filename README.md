# README.

La imagen resultante del [Dockerfile](Dockerfile) tiene un peso > 1Gb ya que utiliza como imagen base utiliza como base `amazonlinux:2.0.20191016.0`, fue pensada para entornos de desarrollo con python 3.8.0 para _instancias EC2 o funciones lambda_, utiliza [pyenv](https://github.com/pyenv/pyenv), por lo cual, si desea utilizar otra versión de python, modifique las `líneas 54 y 55` del Dockerfile.
