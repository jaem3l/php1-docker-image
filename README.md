PHP 1 Docker Image
==================

Basic Docker image which provides an installation of PHP in version 1.0.8

Getting started
---------------

1. Clone repositoy

    ```
    $ git clone https://github.com/jaem3l/php1-docker-image.git
    $ cd php1-docker-image
    ```

2. Build Docker image

    ```
    $ docker build -t php1 .
    ```

2. Start container

    ```
    docker run -dit -p 8080:80 --name php1cont -v $(pwd)/htdocs:/usr/local/apache2/htdocs/ php1
    ```

3. See PHP 1 in action

    - http://localhost:8080/cgi-bin/phpl.cgi?version
    - http://localhost:8080/cgi-bin/phpl.cgi?index.html

Resources
---------

- [Release notes of PHP 1.0 in 1995](https://groups.google.com/forum/#!msg/comp.infosystems.www.authoring.cgi/PyJ25gZ6z7A/M9FkTUVDfcwJ) by Rasmus Lerdorf
- Learn more about [the history of PHP](http://php.net/manual/en/history.php.php)
- Check out old versions of PHP [at the museum](https://museum.php.net)
