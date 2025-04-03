FROM tomcat:9.0-jdk11-openjdk

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file to the webapps directory in the container
COPY target/mvn-hello-world.war ./mvn-hello-world.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
