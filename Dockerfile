FROM tomcat:10.1-jdk17

# Clean default apps (optional but recommended)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat
COPY springbootmvnapp.war /usr/local/tomcat/webapps/springbootmvnapp.war

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
