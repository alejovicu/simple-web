# simple-web
A simple framework for hosting a web store

With simple-web you just need to copy the files to your apache hosting, setup the MySQL connection in the file and start working customizing the react components and styles as you need.

The main goal of this framework its support the basic operations for a web store like:
 - product management
 - order management
 - user management (admin and workers, not customers)
 - i18n

Rules of this framework:
* The site configuration should live in static files and it should be easily moved between environments.
* The operational data will live in the database and should not be moved between environments.

Out of scope:
* content management like image storage.
* inventory. The products will be just enabled or disabled.



For local development:

```bash
cd db ; ./build ; cd ..
docker-compose up -d

# Follow the logs with: docker logs db -f
# Once the message "/usr/sbin/mysqld: ready for connections." is displayed you can setup the database by running the command:
docker exec -it db bash -c "mysql -uroot -ptest < /simple-web.sql"

# The app will be available here:
#  API:    http://localhost:8080/backend/
#  Front:  http://localhost:8080/frontend/
```

