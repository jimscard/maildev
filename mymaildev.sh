#!/bin/bash
# Run maildev from the official distribution in Docker, persisting the mail in $HOME/maildev-mail
# Only needed to intialize the container. After that, using `docker stop maildev` and `docker start maildev` 
# are sufficient. 
#
docker run -p 1080:1080 -p 25:1025 --name maildev -v $HOME/maildev-mail:/tmp/maildirectory --env MAILDEV_MAIL_DIRECTORY=/tmp/maildirectory maildev/maildev 
