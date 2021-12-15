#Man soll erst ein Image holen.
#FROM nginx:1.11-alpine
FROM nginx:1.21.4-alpine

#Befehle
RUN echo 'Hallo. Die Image wird ausgeführt. EB131221'

#Mit COPY-Befehl kann man die Dateien vom lokalen Dateisystem in den Container kopieren. 
COPY index.html /usr/share/nginx/html

#Ein Port für das Image freigeben
EXPOSE 800

#Enigen starten. Normalerweise ist der letzte Befehl in einem Image
#nginx -g daemon off
CMD [ "nginx", "-g", "daemon off;" ]
