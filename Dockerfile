FROM tomcat:11.0.14-jdk25

# Remove os aplicativos de exemplo que vêm no Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia o SEU arquivo para ser o site principal
COPY sistema-estagio-psw.war /usr/local/tomcat/webapps/sistema-estagio-psw.war

# Expõe a porta padrão
EXPOSE 8080

# Inicia o servidor
CMD ["catalina.sh", "run"]