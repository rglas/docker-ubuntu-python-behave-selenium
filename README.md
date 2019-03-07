# docker
Behave-based test automation using Selenium and Firefox (headless).
The container's /home directory contains a basic test example to verify that the container is working.
Run it with
```
docker run -ti -w /home/tests rglas/ubuntu-python-behave-selenium behave
```

Use your own behave feature files with
```
docker run -ti -v /path_to_host_dir:home/tests -w /home/tests rglas/ubuntu-python-behave-selenium behave
```

Copy the example tests from container to host directory with
```
docker cp <CONTAINER ID>:/home/tests /path_to_local_dir
```

The CONTAINER ID could be found with
```
docker ps
docker ps -a
```
