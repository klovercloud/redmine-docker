FROM redmine:4.2.1

# keeping all redmine files in a temporary directory as persistent volume need to be mounted to /usr/src/redime directory (write permission needed)
RUN mkdir -p /usr/src/tmp/redmine
RUN cp -rp /usr/src/redmine/. /usr/src/tmp/redmine/.
RUN chown -R redmine:redmine /usr/src/tmp/redmine/ && chmod -R 777 /usr/src/tmp/redmine

# docker-entrypoint.sh modified to copy back all the redmine files back to /usr/src/redmine directory from the temporary directory after the persistent volume has been mounted
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# changing user to non-root
USER redmine