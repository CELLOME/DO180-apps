FROM ubi8/ubi:8.3




MAINTAINER zzq0010 <zzq0010@auburn.edu>




LABEL description="A custom Apache container based on UBI 8"




RUN yum install -y httpd




RUN echo "Hello from Containerfile" > /var/www/html/index.html




EXPOSE 80




CMD ["httpd", "-D", "FOREGROUND"]
