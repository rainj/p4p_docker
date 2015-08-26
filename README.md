How to use
------
Build

docker build -t p4p:1.0.1 .

-----
Run

docker run -d -v ~/workspaces/docker/p4p/cache:/data --env P4TARGET=remote_url:1666 -p 1667:1667 p4p:1.0.0


Have fun
