FROM fedora
RUN yum install -yqq nginx 
RUN sed -i '/::*80/s/^/#/' /etc/nginx/nginx.conf
COPY index.html /user/share/nginx/index.html
EXPOSE 80
CMD nginx -g 'daemon off'
