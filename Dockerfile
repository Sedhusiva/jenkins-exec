FROM jenkins-exec
WORKDIR /usr/share/jenkins-exexc/script.sh
COPY . /script.sh
EXPOSE 80
RUN chmod +x script.sh
CMD ["./script.sh","-g","daemon off;"]

