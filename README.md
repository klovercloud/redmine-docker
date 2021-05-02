# Redmine App

####
### Local Testing with Docker

**Build**
```sh
docker build -t klovercloud/redmine:latest .
```
**Run**
```sh
docker run -d --name redmine --read-only --tmpfs=/tmp -v /vol/redmine:/usr/src/redmine -p 3000:3000 klovercloud/redmine:latest
```
####
### Run in KloverCloud
- Set the required Environemnt Variables to connect with MySQL or PostgreSQL DB or avoid them to use Sqlite
- Persistent Volume is required
- The following paths should be in the Volume Mount paths\
/tmp\
/usr/src/redmine
