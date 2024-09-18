# put your .rar files in input
# run the following (You need criu installed)

Mind you to use docker checkpoint you have to turn on experimental docker
And probably install CRIU
https://archlinux.org/packages/extra/x86_64/criu/

The script is:

## start container
sudo docker compose up -d

## set checkpoint
sudo docker checkpoint create --leave-running=false unrar_container check1

## shut down PC here

## resume from checkpoitn
sudo docker start --checkpoint check1 unrar_container

(a very hacky attempt by serizon & hnkm , the readme is hastily written by serizon.)
