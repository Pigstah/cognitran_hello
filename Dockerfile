FROM cognitrandocker/hello

MAINTAINER Your Name "Matthew Pigram"
# sets environment variable
ENV ABC=hello
# makes "hello.sh" executable
RUN chmod +x /opt/hello.sh
# runs script	
CMD ["./opt/hello.sh"]
