# cognitran_hello

## Brief

__Docker image: cognitrandocker/hello

Scenario:
The above image should return "hello" when the below is run:

docker run cognitrandocker/hello

It appears to be broken, using this docker image as a base, create a Dockerfile that fixes the issue.

The contents of the script that should return "hello" must be left unedited and the "docker run" command must be the same on the fixed image.

Bring or submit the working Dockerfile once completed.__

## Thought Process

- When "docker run cognitrandocker/hello" was run, it returned "Permissions Denied". This said to me that it the script didn't have executable rights. I then thought it would be best to add "chmod +x /opt/hello.sh" to the dockerfile

- I then checked the contents of the "hello.sh" script, by using "docker run cognitrandocker/hello cat /opt/hello.sh". I noticed it was trying to echo "$ABC" but there was no variable assigning "hello" to "$ABC". 

- I then added "ENV ABC=hello" to the dockerfile, so that it would assign the viariable "ABC" to "hello".

- Finally I added "CMD" to the docker to run the script
